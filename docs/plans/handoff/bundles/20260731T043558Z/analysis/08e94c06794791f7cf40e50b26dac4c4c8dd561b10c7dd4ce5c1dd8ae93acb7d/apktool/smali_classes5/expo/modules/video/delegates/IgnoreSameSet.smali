.class public final Lexpo/modules/video/delegates/IgnoreSameSet;
.super Ljava/lang/Object;
.source "IgnoreSameSet.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000*\n\u0008\u0000\u0010\u0001*\u0004\u0018\u00010\u00022\u00020\u0002Ba\u0012\u0006\u0010\u0003\u001a\u00028\u0000\u0012\u0014\u0008\u0002\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00000\u0005\u0012:\u0008\u0002\u0010\u0006\u001a4\u0012\u0013\u0012\u00118\u0000\u00a2\u0006\u000c\u0008\u0008\u0012\u0008\u0008\t\u0012\u0004\u0008\u0008(\n\u0012\u0013\u0012\u00118\u0000\u00a2\u0006\u000c\u0008\u0008\u0012\u0008\u0008\t\u0012\u0004\u0008\u0008(\u000b\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u0007\u00a2\u0006\u0004\u0008\r\u0010\u000eJ$\u0010\u0014\u001a\u00028\u00002\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u00022\n\u0010\u0016\u001a\u0006\u0012\u0002\u0008\u00030\u0017H\u0086\u0002\u00a2\u0006\u0002\u0010\u0018J,\u0010\u0019\u001a\u00020\u000c2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u00022\n\u0010\u0016\u001a\u0006\u0012\u0002\u0008\u00030\u00172\u0006\u0010\u0003\u001a\u00028\u0000H\u0086\u0002\u00a2\u0006\u0002\u0010\u001aR\u0010\u0010\u0003\u001a\u00028\u0000X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u000fR\u001d\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00000\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011RC\u0010\u0006\u001a4\u0012\u0013\u0012\u00118\u0000\u00a2\u0006\u000c\u0008\u0008\u0012\u0008\u0008\t\u0012\u0004\u0008\u0008(\n\u0012\u0013\u0012\u00118\u0000\u00a2\u0006\u000c\u0008\u0008\u0012\u0008\u0008\t\u0012\u0004\u0008\u0008(\u000b\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u001b"
    }
    d2 = {
        "Lexpo/modules/video/delegates/IgnoreSameSet;",
        "T",
        "",
        "value",
        "propertyMapper",
        "Lkotlin/Function1;",
        "didSet",
        "Lkotlin/Function2;",
        "Lkotlin/ParameterName;",
        "name",
        "new",
        "old",
        "",
        "<init>",
        "(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V",
        "Ljava/lang/Object;",
        "getPropertyMapper",
        "()Lkotlin/jvm/functions/Function1;",
        "getDidSet",
        "()Lkotlin/jvm/functions/Function2;",
        "getValue",
        "thisRef",
        "property",
        "Lkotlin/reflect/KProperty;",
        "(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;",
        "setValue",
        "(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V",
        "expo-video_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final didSet:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "TT;TT;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final propertyMapper:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "TT;TT;>;"
        }
    .end annotation
.end field

.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$w1kIhb7o3lDiwpltD-r2EZn5Nt4(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lexpo/modules/video/delegates/IgnoreSameSet;->_init_$lambda$0(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;+TT;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-TT;-TT;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "propertyMapper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexpo/modules/video/delegates/IgnoreSameSet;->value:Ljava/lang/Object;

    iput-object p2, p0, Lexpo/modules/video/delegates/IgnoreSameSet;->propertyMapper:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lexpo/modules/video/delegates/IgnoreSameSet;->didSet:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 13
    new-instance p2, Lexpo/modules/video/delegates/IgnoreSameSet$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Lexpo/modules/video/delegates/IgnoreSameSet$$ExternalSyntheticLambda0;-><init>()V

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lexpo/modules/video/delegates/IgnoreSameSet;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method private static final _init_$lambda$0(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p0
.end method


# virtual methods
.method public final getDidSet()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "TT;TT;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lexpo/modules/video/delegates/IgnoreSameSet;->didSet:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method

.method public final getPropertyMapper()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "TT;TT;>;"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lexpo/modules/video/delegates/IgnoreSameSet;->propertyMapper:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/reflect/KProperty<",
            "*>;)TT;"
        }
    .end annotation

    const-string p1, "property"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iget-object p1, p0, Lexpo/modules/video/delegates/IgnoreSameSet;->value:Ljava/lang/Object;

    return-object p1
.end method

.method public final setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/reflect/KProperty<",
            "*>;TT;)V"
        }
    .end annotation

    const-string p1, "property"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iget-object p1, p0, Lexpo/modules/video/delegates/IgnoreSameSet;->value:Ljava/lang/Object;

    iget-object p2, p0, Lexpo/modules/video/delegates/IgnoreSameSet;->propertyMapper:Lkotlin/jvm/functions/Function1;

    invoke-interface {p2, p3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 20
    :cond_0
    iget-object p1, p0, Lexpo/modules/video/delegates/IgnoreSameSet;->value:Ljava/lang/Object;

    .line 21
    iget-object p2, p0, Lexpo/modules/video/delegates/IgnoreSameSet;->propertyMapper:Lkotlin/jvm/functions/Function1;

    invoke-interface {p2, p3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Lexpo/modules/video/delegates/IgnoreSameSet;->value:Ljava/lang/Object;

    .line 22
    iget-object p3, p0, Lexpo/modules/video/delegates/IgnoreSameSet;->didSet:Lkotlin/jvm/functions/Function2;

    if-eqz p3, :cond_1

    invoke-interface {p3, p2, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method
