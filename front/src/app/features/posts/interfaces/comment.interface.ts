export default interface Comment {
    id: number,
    postId: number,
    content: string,
    username: string,
    createdDate: Date
}