.class final Lcom/android/contacts/editor/KindSectionView$StructuredNameEditorListener;
.super Ljava/lang/Object;
.source "KindSectionView.java"

# interfaces
.implements Lcom/android/contacts/editor/Editor$EditorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/editor/KindSectionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StructuredNameEditorListener"
.end annotation


# instance fields
.field private final mListener:Lcom/android/contacts/editor/RawContactEditorView$Listener;

.field private final mRawContactId:J

.field private final mValuesDelta:Lcom/android/contacts/model/ValuesDelta;


# direct methods
.method public constructor <init>(Lcom/android/contacts/model/ValuesDelta;JLcom/android/contacts/editor/RawContactEditorView$Listener;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/android/contacts/editor/KindSectionView$StructuredNameEditorListener;->mValuesDelta:Lcom/android/contacts/model/ValuesDelta;

    .line 66
    iput-wide p2, p0, Lcom/android/contacts/editor/KindSectionView$StructuredNameEditorListener;->mRawContactId:J

    .line 67
    iput-object p4, p0, Lcom/android/contacts/editor/KindSectionView$StructuredNameEditorListener;->mListener:Lcom/android/contacts/editor/RawContactEditorView$Listener;

    return-void
.end method


# virtual methods
.method public onDeleteRequested(Lcom/android/contacts/editor/Editor;)V
    .locals 0

    .line 84
    invoke-interface {p1}, Lcom/android/contacts/editor/Editor;->clearAllFields()V

    return-void
.end method

.method public onRequest(I)V
    .locals 3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 73
    iget-object p1, p0, Lcom/android/contacts/editor/KindSectionView$StructuredNameEditorListener;->mValuesDelta:Lcom/android/contacts/model/ValuesDelta;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/contacts/model/ValuesDelta;->setSuperPrimary(Z)V

    .line 74
    iget-object p1, p0, Lcom/android/contacts/editor/KindSectionView$StructuredNameEditorListener;->mListener:Lcom/android/contacts/editor/RawContactEditorView$Listener;

    if-eqz p1, :cond_1

    .line 75
    iget-wide v0, p0, Lcom/android/contacts/editor/KindSectionView$StructuredNameEditorListener;->mRawContactId:J

    iget-object v2, p0, Lcom/android/contacts/editor/KindSectionView$StructuredNameEditorListener;->mValuesDelta:Lcom/android/contacts/model/ValuesDelta;

    invoke-interface {p1, v0, v1, v2}, Lcom/android/contacts/editor/RawContactEditorView$Listener;->onNameFieldChanged(JLcom/android/contacts/model/ValuesDelta;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 78
    iget-object p1, p0, Lcom/android/contacts/editor/KindSectionView$StructuredNameEditorListener;->mValuesDelta:Lcom/android/contacts/model/ValuesDelta;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/contacts/model/ValuesDelta;->setSuperPrimary(Z)V

    :cond_1
    :goto_0
    return-void
.end method
