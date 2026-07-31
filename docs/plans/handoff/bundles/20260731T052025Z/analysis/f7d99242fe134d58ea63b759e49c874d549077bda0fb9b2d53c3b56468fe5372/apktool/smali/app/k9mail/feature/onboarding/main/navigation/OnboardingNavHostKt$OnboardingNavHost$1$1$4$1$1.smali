.class public final synthetic Lapp/k9mail/feature/onboarding/main/navigation/OnboardingNavHostKt$OnboardingNavHost$1$1$4$1$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $navController:Landroidx/navigation/NavHostController;

.field public final synthetic $r8$classId:I


# direct methods
.method public constructor <init>(Landroidx/navigation/NavHostController;I)V
    .locals 12

    .line 1
    iput p2, p0, Lapp/k9mail/feature/onboarding/main/navigation/OnboardingNavHostKt$OnboardingNavHost$1$1$4$1$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p2, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lapp/k9mail/feature/onboarding/main/navigation/OnboardingNavHostKt$OnboardingNavHost$1$1$4$1$1;->$navController:Landroidx/navigation/NavHostController;

    .line 7
    .line 8
    const-string v4, "OnboardingNavHost$onImportSuccess(Landroidx/navigation/NavHostController;)V"

    .line 9
    .line 10
    const/4 v5, 0x0

    .line 11
    const/4 v1, 0x0

    .line 12
    const-class v2, Lkotlin/jvm/internal/Intrinsics$Kotlin;

    .line 13
    .line 14
    const-string v3, "onImportSuccess"

    .line 15
    .line 16
    move-object v0, p0

    .line 17
    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :pswitch_0
    move-object v0, p0

    .line 22
    iput-object p1, v0, Lapp/k9mail/feature/onboarding/main/navigation/OnboardingNavHostKt$OnboardingNavHost$1$1$4$1$1;->$navController:Landroidx/navigation/NavHostController;

    .line 23
    .line 24
    const-string v10, "OnboardingNavHost$onImportSuccess(Landroidx/navigation/NavHostController;)V"

    .line 25
    .line 26
    const/4 v11, 0x0

    .line 27
    const/4 v7, 0x0

    .line 28
    const-class v8, Lkotlin/jvm/internal/Intrinsics$Kotlin;

    .line 29
    .line 30
    const-string v9, "onImportSuccess"

    .line 31
    .line 32
    move-object v6, v0

    .line 33
    invoke-direct/range {v6 .. v11}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lapp/k9mail/feature/onboarding/main/navigation/OnboardingNavHostKt$OnboardingNavHost$1$1$4$1$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    const/16 v2, 0xe

    .line 6
    .line 7
    const-string v3, "permissions"

    .line 8
    .line 9
    iget-object p0, p0, Lapp/k9mail/feature/onboarding/main/navigation/OnboardingNavHostKt$OnboardingNavHost$1$1$4$1$1;->$navController:Landroidx/navigation/NavHostController;

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    new-instance v0, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda0;

    .line 15
    .line 16
    invoke-direct {v0, v2}, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v3, v0}, Landroidx/navigation/NavHostController;->navigate(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 20
    .line 21
    .line 22
    return-object v1

    .line 23
    :pswitch_0
    new-instance v0, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda0;

    .line 24
    .line 25
    invoke-direct {v0, v2}, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v3, v0}, Landroidx/navigation/NavHostController;->navigate(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 29
    .line 30
    .line 31
    return-object v1

    .line 32
    nop

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
