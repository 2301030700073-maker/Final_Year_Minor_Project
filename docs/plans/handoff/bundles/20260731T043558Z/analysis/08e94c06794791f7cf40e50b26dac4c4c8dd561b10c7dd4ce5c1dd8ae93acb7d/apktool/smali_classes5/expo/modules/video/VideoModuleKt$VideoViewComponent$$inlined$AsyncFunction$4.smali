.class public final Lexpo/modules/video/VideoModuleKt$VideoViewComponent$$inlined$AsyncFunction$4;
.super Ljava/lang/Object;
.source "ViewDefinitionBuilder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/video/VideoModuleKt;->VideoViewComponent(Lexpo/modules/kotlin/views/ViewDefinitionBuilder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function2<",
        "[",
        "Ljava/lang/Object;",
        "Lexpo/modules/kotlin/Promise;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nViewDefinitionBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ViewDefinitionBuilder.kt\nexpo/modules/kotlin/views/ViewDefinitionBuilder$AsyncFunction$5\n+ 2 VideoModule.kt\nexpo/modules/video/VideoModuleKt\n*L\n1#1,242:1\n399#2,4:243\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 242
    check-cast p1, [Ljava/lang/Object;

    check-cast p2, Lexpo/modules/kotlin/Promise;

    invoke-virtual {p0, p1, p2}, Lexpo/modules/video/VideoModuleKt$VideoViewComponent$$inlined$AsyncFunction$4;->invoke([Ljava/lang/Object;Lexpo/modules/kotlin/Promise;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke([Ljava/lang/Object;Lexpo/modules/kotlin/Promise;)V
    .locals 1

    const-string v0, "<unused var>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "promise"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 236
    const-string p1, "T"

    const/4 v0, 0x1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    check-cast p2, Ljava/lang/Object;

    check-cast p2, Lexpo/modules/video/VideoView;

    .line 243
    new-instance p1, Lexpo/modules/video/VideoModuleKt$VideoViewComponent$10$1;

    invoke-direct {p1, p2}, Lexpo/modules/video/VideoModuleKt$VideoViewComponent$10$1;-><init>(Lexpo/modules/video/VideoView;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, p1}, Lexpo/modules/video/utils/PictureInPictureUtilsKt;->runWithPiPMisconfigurationSoftHandling(ZLkotlin/jvm/functions/Function0;)V

    return-void
.end method
