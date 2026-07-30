.class Lcom/android/contacts/activities/PeopleActivity$3;
.super Ljava/lang/Object;
.source "PeopleActivity.java"

# interfaces
.implements Lcom/android/contacts/list/ProviderStatusWatcher$ProviderStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/PeopleActivity;
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

    .line 254
    iput-object p1, p0, Lcom/android/contacts/activities/PeopleActivity$3;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProviderStatusChange()V
    .locals 2

    .line 258
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$3;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/contacts/activities/PeopleActivity;->access$500(Lcom/android/contacts/activities/PeopleActivity;Z)V

    return-void
.end method
