.class public interface abstract Lcom/android/contacts/group/GroupNameEditDialogFragment$Listener;
.super Ljava/lang/Object;
.source "GroupNameEditDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/group/GroupNameEditDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# static fields
.field public static final None:Lcom/android/contacts/group/GroupNameEditDialogFragment$Listener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 74
    new-instance v0, Lcom/android/contacts/group/GroupNameEditDialogFragment$Listener$1;

    invoke-direct {v0}, Lcom/android/contacts/group/GroupNameEditDialogFragment$Listener$1;-><init>()V

    sput-object v0, Lcom/android/contacts/group/GroupNameEditDialogFragment$Listener;->None:Lcom/android/contacts/group/GroupNameEditDialogFragment$Listener;

    return-void
.end method


# virtual methods
.method public abstract onGroupNameEditCancelled()V
.end method

.method public abstract onGroupNameEditCompleted(Ljava/lang/String;)V
.end method
