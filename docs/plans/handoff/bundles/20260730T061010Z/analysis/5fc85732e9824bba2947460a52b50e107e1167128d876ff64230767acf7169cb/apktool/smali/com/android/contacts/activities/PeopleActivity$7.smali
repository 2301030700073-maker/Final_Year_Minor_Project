.class Lcom/android/contacts/activities/PeopleActivity$7;
.super Ljava/lang/Object;
.source "PeopleActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/activities/PeopleActivity;->onOpenSettings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/PeopleActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/PeopleActivity;)V
    .locals 0

    .line 1184
    iput-object p1, p0, Lcom/android/contacts/activities/PeopleActivity$7;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1187
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$7;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-static {v0}, Lcom/android/contacts/activities/PeopleActivity;->access$800(Lcom/android/contacts/activities/PeopleActivity;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
