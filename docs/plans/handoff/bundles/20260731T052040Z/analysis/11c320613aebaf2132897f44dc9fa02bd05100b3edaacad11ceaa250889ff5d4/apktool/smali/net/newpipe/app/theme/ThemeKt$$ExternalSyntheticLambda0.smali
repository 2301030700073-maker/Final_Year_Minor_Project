.class public final synthetic Lnet/newpipe/app/theme/ThemeKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Landroidx/compose/material3/ColorScheme;

.field public final synthetic f$2:Landroidx/compose/runtime/internal/ComposableLambdaImpl;


# direct methods
.method public synthetic constructor <init>(ZLandroidx/compose/material3/ColorScheme;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lnet/newpipe/app/theme/ThemeKt$$ExternalSyntheticLambda0;->f$0:Z

    .line 5
    .line 6
    iput-object p2, p0, Lnet/newpipe/app/theme/ThemeKt$$ExternalSyntheticLambda0;->f$1:Landroidx/compose/material3/ColorScheme;

    .line 7
    .line 8
    iput-object p3, p0, Lnet/newpipe/app/theme/ThemeKt$$ExternalSyntheticLambda0;->f$2:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 2
    .line 3
    check-cast p2, Ljava/lang/Integer;

    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const/16 p2, 0x181

    .line 9
    .line 10
    invoke-static {p2}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    iget-boolean v0, p0, Lnet/newpipe/app/theme/ThemeKt$$ExternalSyntheticLambda0;->f$0:Z

    .line 15
    .line 16
    iget-object v1, p0, Lnet/newpipe/app/theme/ThemeKt$$ExternalSyntheticLambda0;->f$1:Landroidx/compose/material3/ColorScheme;

    .line 17
    .line 18
    iget-object p0, p0, Lnet/newpipe/app/theme/ThemeKt$$ExternalSyntheticLambda0;->f$2:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 19
    .line 20
    invoke-static {v0, v1, p0, p1, p2}, Lnet/newpipe/app/theme/ThemeKt;->AppTheme(ZLandroidx/compose/material3/ColorScheme;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 21
    .line 22
    .line 23
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 24
    .line 25
    return-object p0
.end method
