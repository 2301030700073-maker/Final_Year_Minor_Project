.class public final Lexpo/modules/kotlin/classcomponent/ClassComponentBuilder$Constructor$7;
.super Ljava/lang/Object;
.source "ClassComponentBuilder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/kotlin/classcomponent/ClassComponentBuilder;->Constructor(Lkotlin/jvm/functions/Function3;)Lexpo/modules/kotlin/functions/SyncFunctionComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "[",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nClassComponentBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ClassComponentBuilder.kt\nexpo/modules/kotlin/classcomponent/ClassComponentBuilder$Constructor$7\n+ 2 EnforceType.kt\nexpo/modules/kotlin/types/EnforceTypeKt\n*L\n1#1,197:1\n25#2:198\n*S KotlinDebug\n*F\n+ 1 ClassComponentBuilder.kt\nexpo/modules/kotlin/classcomponent/ClassComponentBuilder$Constructor$7\n*L\n119#1:198\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0xb0
.end annotation


# instance fields
.field final synthetic $body:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "TP0;TP1;TP2;TSharedObjectType;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function3<",
            "-TP0;-TP1;-TP2;+TSharedObjectType;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lexpo/modules/kotlin/classcomponent/ClassComponentBuilder$Constructor$7;->$body:Lkotlin/jvm/functions/Function3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 121
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lexpo/modules/kotlin/classcomponent/ClassComponentBuilder$Constructor$7;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    const-string v0, "<destruct>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 118
    aget-object v0, p1, v0

    const/4 v1, 0x1

    aget-object v1, p1, v1

    const/4 v2, 0x2

    aget-object p1, p1, v2

    .line 120
    iget-object v2, p0, Lexpo/modules/kotlin/classcomponent/ClassComponentBuilder$Constructor$7;->$body:Lkotlin/jvm/functions/Function3;

    invoke-interface {v2, v0, v1, p1}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
