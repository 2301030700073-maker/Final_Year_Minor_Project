.class public final synthetic Lapp/k9mail/feature/launcher/navigation/FeatureLauncherNavHostKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Landroidx/navigation/NavHostController;

.field public final synthetic f$1:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$10:Lnet/thunderbird/feature/thundermail/internal/common/navigation/DefaultThundermailNavigation;

.field public final synthetic f$11:Lnet/thunderbird/feature/changelog/internal/DefaultChangelogNavigation;

.field public final synthetic f$2:Landroidx/compose/ui/Modifier;

.field public final synthetic f$3:Lnet/thunderbird/app/common/feature/MessageListLauncher;

.field public final synthetic f$4:Lapp/k9mail/feature/account/edit/navigation/DefaultAccountEditNavigation;

.field public final synthetic f$5:Lnet/thunderbird/feature/account/settings/impl/DefaultAccountSettingsNavigation;

.field public final synthetic f$6:Lapp/k9mail/feature/account/setup/navigation/DefaultAccountSetupNavigation;

.field public final synthetic f$7:Lapp/k9mail/feature/onboarding/main/navigation/DefaultOnboardingNavigation;

.field public final synthetic f$8:Lnet/thunderbird/feature/funding/noop/NoOpFundingNavigation;

.field public final synthetic f$9:Lnet/thunderbird/feature/debug/settings/navigation/NoOpSecretDebugSettingsNavigation;


# direct methods
.method public synthetic constructor <init>(Landroidx/navigation/NavHostController;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Lnet/thunderbird/app/common/feature/MessageListLauncher;Lapp/k9mail/feature/account/edit/navigation/DefaultAccountEditNavigation;Lnet/thunderbird/feature/account/settings/impl/DefaultAccountSettingsNavigation;Lapp/k9mail/feature/account/setup/navigation/DefaultAccountSetupNavigation;Lapp/k9mail/feature/onboarding/main/navigation/DefaultOnboardingNavigation;Lnet/thunderbird/feature/funding/noop/NoOpFundingNavigation;Lnet/thunderbird/feature/debug/settings/navigation/NoOpSecretDebugSettingsNavigation;Lnet/thunderbird/feature/thundermail/internal/common/navigation/DefaultThundermailNavigation;Lnet/thunderbird/feature/changelog/internal/DefaultChangelogNavigation;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lapp/k9mail/feature/launcher/navigation/FeatureLauncherNavHostKt$$ExternalSyntheticLambda1;->f$0:Landroidx/navigation/NavHostController;

    .line 5
    .line 6
    iput-object p2, p0, Lapp/k9mail/feature/launcher/navigation/FeatureLauncherNavHostKt$$ExternalSyntheticLambda1;->f$1:Lkotlin/jvm/functions/Function0;

    .line 7
    .line 8
    iput-object p3, p0, Lapp/k9mail/feature/launcher/navigation/FeatureLauncherNavHostKt$$ExternalSyntheticLambda1;->f$2:Landroidx/compose/ui/Modifier;

    .line 9
    .line 10
    iput-object p4, p0, Lapp/k9mail/feature/launcher/navigation/FeatureLauncherNavHostKt$$ExternalSyntheticLambda1;->f$3:Lnet/thunderbird/app/common/feature/MessageListLauncher;

    .line 11
    .line 12
    iput-object p5, p0, Lapp/k9mail/feature/launcher/navigation/FeatureLauncherNavHostKt$$ExternalSyntheticLambda1;->f$4:Lapp/k9mail/feature/account/edit/navigation/DefaultAccountEditNavigation;

    .line 13
    .line 14
    iput-object p6, p0, Lapp/k9mail/feature/launcher/navigation/FeatureLauncherNavHostKt$$ExternalSyntheticLambda1;->f$5:Lnet/thunderbird/feature/account/settings/impl/DefaultAccountSettingsNavigation;

    .line 15
    .line 16
    iput-object p7, p0, Lapp/k9mail/feature/launcher/navigation/FeatureLauncherNavHostKt$$ExternalSyntheticLambda1;->f$6:Lapp/k9mail/feature/account/setup/navigation/DefaultAccountSetupNavigation;

    .line 17
    .line 18
    iput-object p8, p0, Lapp/k9mail/feature/launcher/navigation/FeatureLauncherNavHostKt$$ExternalSyntheticLambda1;->f$7:Lapp/k9mail/feature/onboarding/main/navigation/DefaultOnboardingNavigation;

    .line 19
    .line 20
    iput-object p9, p0, Lapp/k9mail/feature/launcher/navigation/FeatureLauncherNavHostKt$$ExternalSyntheticLambda1;->f$8:Lnet/thunderbird/feature/funding/noop/NoOpFundingNavigation;

    .line 21
    .line 22
    iput-object p10, p0, Lapp/k9mail/feature/launcher/navigation/FeatureLauncherNavHostKt$$ExternalSyntheticLambda1;->f$9:Lnet/thunderbird/feature/debug/settings/navigation/NoOpSecretDebugSettingsNavigation;

    .line 23
    .line 24
    iput-object p11, p0, Lapp/k9mail/feature/launcher/navigation/FeatureLauncherNavHostKt$$ExternalSyntheticLambda1;->f$10:Lnet/thunderbird/feature/thundermail/internal/common/navigation/DefaultThundermailNavigation;

    .line 25
    .line 26
    iput-object p12, p0, Lapp/k9mail/feature/launcher/navigation/FeatureLauncherNavHostKt$$ExternalSyntheticLambda1;->f$11:Lnet/thunderbird/feature/changelog/internal/DefaultChangelogNavigation;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    move-object v12, p1

    .line 2
    check-cast v12, Landroidx/compose/runtime/Composer;

    .line 3
    .line 4
    move-object/from16 v0, p2

    .line 5
    .line 6
    check-cast v0, Ljava/lang/Integer;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    invoke-static {v0}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 13
    .line 14
    .line 15
    move-result v13

    .line 16
    iget-object v0, p0, Lapp/k9mail/feature/launcher/navigation/FeatureLauncherNavHostKt$$ExternalSyntheticLambda1;->f$0:Landroidx/navigation/NavHostController;

    .line 17
    .line 18
    iget-object v1, p0, Lapp/k9mail/feature/launcher/navigation/FeatureLauncherNavHostKt$$ExternalSyntheticLambda1;->f$1:Lkotlin/jvm/functions/Function0;

    .line 19
    .line 20
    iget-object v2, p0, Lapp/k9mail/feature/launcher/navigation/FeatureLauncherNavHostKt$$ExternalSyntheticLambda1;->f$2:Landroidx/compose/ui/Modifier;

    .line 21
    .line 22
    iget-object v3, p0, Lapp/k9mail/feature/launcher/navigation/FeatureLauncherNavHostKt$$ExternalSyntheticLambda1;->f$3:Lnet/thunderbird/app/common/feature/MessageListLauncher;

    .line 23
    .line 24
    iget-object v4, p0, Lapp/k9mail/feature/launcher/navigation/FeatureLauncherNavHostKt$$ExternalSyntheticLambda1;->f$4:Lapp/k9mail/feature/account/edit/navigation/DefaultAccountEditNavigation;

    .line 25
    .line 26
    iget-object v5, p0, Lapp/k9mail/feature/launcher/navigation/FeatureLauncherNavHostKt$$ExternalSyntheticLambda1;->f$5:Lnet/thunderbird/feature/account/settings/impl/DefaultAccountSettingsNavigation;

    .line 27
    .line 28
    iget-object v6, p0, Lapp/k9mail/feature/launcher/navigation/FeatureLauncherNavHostKt$$ExternalSyntheticLambda1;->f$6:Lapp/k9mail/feature/account/setup/navigation/DefaultAccountSetupNavigation;

    .line 29
    .line 30
    iget-object v7, p0, Lapp/k9mail/feature/launcher/navigation/FeatureLauncherNavHostKt$$ExternalSyntheticLambda1;->f$7:Lapp/k9mail/feature/onboarding/main/navigation/DefaultOnboardingNavigation;

    .line 31
    .line 32
    iget-object v8, p0, Lapp/k9mail/feature/launcher/navigation/FeatureLauncherNavHostKt$$ExternalSyntheticLambda1;->f$8:Lnet/thunderbird/feature/funding/noop/NoOpFundingNavigation;

    .line 33
    .line 34
    iget-object v9, p0, Lapp/k9mail/feature/launcher/navigation/FeatureLauncherNavHostKt$$ExternalSyntheticLambda1;->f$9:Lnet/thunderbird/feature/debug/settings/navigation/NoOpSecretDebugSettingsNavigation;

    .line 35
    .line 36
    iget-object v10, p0, Lapp/k9mail/feature/launcher/navigation/FeatureLauncherNavHostKt$$ExternalSyntheticLambda1;->f$10:Lnet/thunderbird/feature/thundermail/internal/common/navigation/DefaultThundermailNavigation;

    .line 37
    .line 38
    iget-object v11, p0, Lapp/k9mail/feature/launcher/navigation/FeatureLauncherNavHostKt$$ExternalSyntheticLambda1;->f$11:Lnet/thunderbird/feature/changelog/internal/DefaultChangelogNavigation;

    .line 39
    .line 40
    invoke-static/range {v0 .. v13}, Landroidx/work/Operation$State;->FeatureLauncherNavHost(Landroidx/navigation/NavHostController;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Lnet/thunderbird/app/common/feature/MessageListLauncher;Lapp/k9mail/feature/account/edit/navigation/DefaultAccountEditNavigation;Lnet/thunderbird/feature/account/settings/impl/DefaultAccountSettingsNavigation;Lapp/k9mail/feature/account/setup/navigation/DefaultAccountSetupNavigation;Lapp/k9mail/feature/onboarding/main/navigation/DefaultOnboardingNavigation;Lnet/thunderbird/feature/funding/noop/NoOpFundingNavigation;Lnet/thunderbird/feature/debug/settings/navigation/NoOpSecretDebugSettingsNavigation;Lnet/thunderbird/feature/thundermail/internal/common/navigation/DefaultThundermailNavigation;Lnet/thunderbird/feature/changelog/internal/DefaultChangelogNavigation;Landroidx/compose/runtime/Composer;I)V

    .line 41
    .line 42
    .line 43
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 44
    .line 45
    return-object p0
.end method
