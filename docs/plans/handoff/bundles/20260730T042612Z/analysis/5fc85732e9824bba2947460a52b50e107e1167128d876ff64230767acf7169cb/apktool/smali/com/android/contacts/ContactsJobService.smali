.class public Lcom/android/contacts/ContactsJobService;
.super Landroid/app/job/JobService;
.source "ContactsJobService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 2

    .line 30
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 32
    :cond_0
    invoke-static {p0, p1}, Lcom/android/contacts/DynamicShortcuts;->updateFromJob(Landroid/app/job/JobService;Landroid/app/job/JobParameters;)V

    return v1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
