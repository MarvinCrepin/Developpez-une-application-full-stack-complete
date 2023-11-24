import { Component, OnInit } from '@angular/core';
import { SubjectService } from '../../services/subject.service';
import Subject from "../../interfaces/subject.interface"
@Component({
  selector: 'app-subject-list',
  templateUrl: './list.component.html',
  styleUrls: ['./list.component.scss']
})
export class ListComponent implements OnInit {

  public subjects: Subject[] | undefined;

  constructor(private subjectService: SubjectService) {
  }

  public ngOnInit(): void {
    this.getAll();
  }

  public getAll(): void {
    this.subjectService.all().subscribe((subjects) => {
      this.subjectService.getUserSubscriptions().subscribe((subscriptions) => {
        if (subscriptions) {
          subscriptions.forEach((subscription) => {
            const subject = subjects?.find((subject) => subject.id === subscription.id);
            subject!.isSubscribed = true;
          })
        }
        this.subjects = subjects;
      })
    })

  }

  public processState(id: number): void {
    this.subjectService.processState(id).subscribe(() => {
      this.getAll()
    })
  }
}
