.class public final synthetic Lcom/android/contacts/editor/-$$Lambda$ContactEditorFragment$4r1p2fbPZh8Cz8CDj92XHX7Cn0o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/contacts/editor/ContactEditorFragment;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/contacts/editor/ContactEditorFragment;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/contacts/editor/-$$Lambda$ContactEditorFragment$4r1p2fbPZh8Cz8CDj92XHX7Cn0o;->f$0:Lcom/android/contacts/editor/ContactEditorFragment;

    iput p2, p0, Lcom/android/contacts/editor/-$$Lambda$ContactEditorFragment$4r1p2fbPZh8Cz8CDj92XHX7Cn0o;->f$1:I

    iput-boolean p3, p0, Lcom/android/contacts/editor/-$$Lambda$ContactEditorFragment$4r1p2fbPZh8Cz8CDj92XHX7Cn0o;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/contacts/editor/-$$Lambda$ContactEditorFragment$4r1p2fbPZh8Cz8CDj92XHX7Cn0o;->f$0:Lcom/android/contacts/editor/ContactEditorFragment;

    iget v1, p0, Lcom/android/contacts/editor/-$$Lambda$ContactEditorFragment$4r1p2fbPZh8Cz8CDj92XHX7Cn0o;->f$1:I

    iget-boolean v2, p0, Lcom/android/contacts/editor/-$$Lambda$ContactEditorFragment$4r1p2fbPZh8Cz8CDj92XHX7Cn0o;->f$2:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/editor/ContactEditorFragment;->lambda$maybeRestoreFocus$0$ContactEditorFragment(IZ)V

    return-void
.end method
