.class public abstract Lkotlinx/serialization/modules/SerializersModuleKt;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final EmptySerializersModule:Lorg/wikipedia/login/LoginClient;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/wikipedia/login/LoginClient;

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    invoke-direct {v0, v1}, Lorg/wikipedia/login/LoginClient;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lkotlinx/serialization/modules/SerializersModuleKt;->EmptySerializersModule:Lorg/wikipedia/login/LoginClient;

    .line 8
    .line 9
    return-void
.end method
