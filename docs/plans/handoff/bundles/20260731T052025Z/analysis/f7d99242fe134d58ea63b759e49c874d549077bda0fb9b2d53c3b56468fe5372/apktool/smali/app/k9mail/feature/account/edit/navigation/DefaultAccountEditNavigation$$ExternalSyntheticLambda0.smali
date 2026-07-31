.class public final synthetic Lapp/k9mail/feature/account/edit/navigation/DefaultAccountEditNavigation$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;

.field public final synthetic f$1:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;Lkotlin/jvm/functions/Function0;I)V
    .locals 0

    .line 1
    iput p3, p0, Lapp/k9mail/feature/account/edit/navigation/DefaultAccountEditNavigation$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lapp/k9mail/feature/account/edit/navigation/DefaultAccountEditNavigation$$ExternalSyntheticLambda0;->f$0:Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;

    .line 4
    .line 5
    iput-object p2, p0, Lapp/k9mail/feature/account/edit/navigation/DefaultAccountEditNavigation$$ExternalSyntheticLambda0;->f$1:Lkotlin/jvm/functions/Function0;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lapp/k9mail/feature/account/edit/navigation/DefaultAccountEditNavigation$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iget-object v3, p0, Lapp/k9mail/feature/account/edit/navigation/DefaultAccountEditNavigation$$ExternalSyntheticLambda0;->f$1:Lkotlin/jvm/functions/Function0;

    .line 7
    .line 8
    iget-object p0, p0, Lapp/k9mail/feature/account/edit/navigation/DefaultAccountEditNavigation$$ExternalSyntheticLambda0;->f$0:Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;

    .line 9
    .line 10
    check-cast p1, Landroidx/compose/animation/AnimatedContentScopeImpl;

    .line 11
    .line 12
    check-cast p2, Landroidx/navigation/NavBackStackEntry;

    .line 13
    .line 14
    check-cast p3, Landroidx/compose/runtime/Composer;

    .line 15
    .line 16
    check-cast p4, Ljava/lang/Integer;

    .line 17
    .line 18
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    packed-switch v0, :pswitch_data_0

    .line 28
    .line 29
    .line 30
    const-class p1, Lapp/k9mail/feature/account/edit/navigation/AccountEditRoute$OutgoingServerSettings;

    .line 31
    .line 32
    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-static {p2, p1}, Lkotlin/math/MathKt;->toRoute(Landroidx/navigation/NavBackStackEntry;Lkotlin/jvm/internal/ClassReference;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    check-cast p1, Lapp/k9mail/feature/account/edit/navigation/AccountEditRoute$OutgoingServerSettings;

    .line 41
    .line 42
    iget-object p1, p1, Lapp/k9mail/feature/account/edit/navigation/AccountEditRoute$OutgoingServerSettings;->accountId:Ljava/lang/String;

    .line 43
    .line 44
    invoke-static {p1, p0, v3, p3, v2}, Landroidx/work/Data$Companion;->EditOutgoingServerSettingsNavHost(Ljava/lang/String;Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 45
    .line 46
    .line 47
    return-object v1

    .line 48
    :pswitch_0
    const-class p1, Lapp/k9mail/feature/account/edit/navigation/AccountEditRoute$IncomingServerSettings;

    .line 49
    .line 50
    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-static {p2, p1}, Lkotlin/math/MathKt;->toRoute(Landroidx/navigation/NavBackStackEntry;Lkotlin/jvm/internal/ClassReference;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    check-cast p1, Lapp/k9mail/feature/account/edit/navigation/AccountEditRoute$IncomingServerSettings;

    .line 59
    .line 60
    iget-object p1, p1, Lapp/k9mail/feature/account/edit/navigation/AccountEditRoute$IncomingServerSettings;->accountId:Ljava/lang/String;

    .line 61
    .line 62
    invoke-static {p1, p0, v3, p3, v2}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->EditIncomingServerSettingsNavHost(Ljava/lang/String;Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 63
    .line 64
    .line 65
    return-object v1

    .line 66
    nop

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
