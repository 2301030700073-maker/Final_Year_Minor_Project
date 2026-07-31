.class public final Lcom/fsck/k9/ui/settings/AboutViewModel;
.super Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# virtual methods
.method public final event(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/fsck/k9/ui/settings/AboutContract$Event;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    instance-of v0, p1, Lcom/fsck/k9/ui/settings/AboutContract$Event$OnChangeLogClick;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    sget-object p1, Lcom/fsck/k9/ui/settings/AboutContract$Effect$OpenChangeLog;->INSTANCE:Lcom/fsck/k9/ui/settings/AboutContract$Effect$OpenChangeLog;

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->emitEffect(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    instance-of v0, p1, Lcom/fsck/k9/ui/settings/AboutContract$Event$OnSectionContentClick;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    new-instance v0, Lcom/fsck/k9/ui/settings/AboutContract$Effect$OpenUrl;

    .line 21
    .line 22
    check-cast p1, Lcom/fsck/k9/ui/settings/AboutContract$Event$OnSectionContentClick;

    .line 23
    .line 24
    iget-object p1, p1, Lcom/fsck/k9/ui/settings/AboutContract$Event$OnSectionContentClick;->url:Ljava/lang/String;

    .line 25
    .line 26
    invoke-direct {v0, p1}, Lcom/fsck/k9/ui/settings/AboutContract$Effect$OpenUrl;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0}, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->emitEffect(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 34
    .line 35
    .line 36
    return-void
.end method
