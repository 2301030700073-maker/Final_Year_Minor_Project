.class public Lexpo/modules/kotlin/sharedobjects/SharedRef;
.super Lexpo/modules/kotlin/sharedobjects/SharedObject;
.source "SharedRef.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RefType:",
        "Ljava/lang/Object;",
        ">",
        "Lexpo/modules/kotlin/sharedobjects/SharedObject;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0017\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u0002B\u001b\u0012\u0006\u0010\u0003\u001a\u00028\u0000\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007B\u0019\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00028\u0000\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0006\u0010\nR\u0013\u0010\u0003\u001a\u00028\u0000\u00a2\u0006\n\n\u0002\u0010\r\u001a\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\u000e\u001a\u00020\u000fX\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Lexpo/modules/kotlin/sharedobjects/SharedRef;",
        "RefType",
        "Lexpo/modules/kotlin/sharedobjects/SharedObject;",
        "ref",
        "runtimeContext",
        "Lexpo/modules/kotlin/RuntimeContext;",
        "<init>",
        "(Ljava/lang/Object;Lexpo/modules/kotlin/RuntimeContext;)V",
        "appContext",
        "Lexpo/modules/kotlin/AppContext;",
        "(Ljava/lang/Object;Lexpo/modules/kotlin/AppContext;)V",
        "getRef",
        "()Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "nativeRefType",
        "",
        "getNativeRefType",
        "()Ljava/lang/String;",
        "expo-modules-core_release"
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
.field private final nativeRefType:Ljava/lang/String;

.field private final ref:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TRefType;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lexpo/modules/kotlin/AppContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRefType;",
            "Lexpo/modules/kotlin/AppContext;",
            ")V"
        }
    .end annotation

    const-string v0, "appContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p2}, Lexpo/modules/kotlin/AppContext;->getHostingRuntimeContext()Lexpo/modules/kotlin/RuntimeContext;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lexpo/modules/kotlin/sharedobjects/SharedRef;-><init>(Ljava/lang/Object;Lexpo/modules/kotlin/RuntimeContext;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lexpo/modules/kotlin/RuntimeContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRefType;",
            "Lexpo/modules/kotlin/RuntimeContext;",
            ")V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p2}, Lexpo/modules/kotlin/sharedobjects/SharedObject;-><init>(Lexpo/modules/kotlin/RuntimeContext;)V

    .line 13
    iput-object p1, p0, Lexpo/modules/kotlin/sharedobjects/SharedRef;->ref:Ljava/lang/Object;

    .line 21
    const-string p1, "unknown"

    iput-object p1, p0, Lexpo/modules/kotlin/sharedobjects/SharedRef;->nativeRefType:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Lexpo/modules/kotlin/RuntimeContext;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 12
    :cond_0
    invoke-direct {p0, p1, p2}, Lexpo/modules/kotlin/sharedobjects/SharedRef;-><init>(Ljava/lang/Object;Lexpo/modules/kotlin/RuntimeContext;)V

    return-void
.end method


# virtual methods
.method public getNativeRefType()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lexpo/modules/kotlin/sharedobjects/SharedRef;->nativeRefType:Ljava/lang/String;

    return-object v0
.end method

.method public final getRef()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TRefType;"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lexpo/modules/kotlin/sharedobjects/SharedRef;->ref:Ljava/lang/Object;

    return-object v0
.end method
