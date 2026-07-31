.class public abstract Lapp/k9mail/core/ui/compose/designsystem/organism/banner/BannerNotificationCardDefaults;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final bannerInlineBehaviour:Lapp/k9mail/core/ui/compose/designsystem/organism/banner/inline/BannerInlineNotificationCardBehaviour;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lapp/k9mail/core/ui/compose/designsystem/organism/banner/inline/BannerInlineNotificationCardBehaviour;->Expanded:Lapp/k9mail/core/ui/compose/designsystem/organism/banner/inline/BannerInlineNotificationCardBehaviour;

    .line 2
    .line 3
    sput-object v0, Lapp/k9mail/core/ui/compose/designsystem/organism/banner/BannerNotificationCardDefaults;->bannerInlineBehaviour:Lapp/k9mail/core/ui/compose/designsystem/organism/banner/inline/BannerInlineNotificationCardBehaviour;

    .line 4
    .line 5
    return-void
.end method

.method public static errorCardColors-dgg9oW8(Landroidx/compose/runtime/Composer;)Lapp/k9mail/core/ui/compose/designsystem/atom/card/CardColors;
    .locals 5

    .line 1
    sget-object v0, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorSchemeKt;->LocalThemeColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 2
    .line 3
    move-object v1, p0

    .line 4
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 5
    .line 6
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;

    .line 11
    .line 12
    iget-wide v1, v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;->errorContainer:J

    .line 13
    .line 14
    move-object v3, p0

    .line 15
    check-cast v3, Landroidx/compose/runtime/GapComposer;

    .line 16
    .line 17
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;

    .line 22
    .line 23
    iget-wide v3, v0, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;->onErrorContainer:J

    .line 24
    .line 25
    invoke-static {v1, v2, v3, v4, p0}, Landroidx/room/util/RelationUtil;->outlinedCardColors-ro_MJ88(JJLandroidx/compose/runtime/Composer;)Lapp/k9mail/core/ui/compose/designsystem/atom/card/CardColors;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0
.end method
