.class public abstract Lorg/mozilla/javascript/xml/XMLLib$Factory;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/javascript/xml/XMLLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static create(Ljava/lang/String;)Lorg/mozilla/javascript/xml/XMLLib$Factory;
    .locals 1

    .line 1
    new-instance v0, Lorg/mozilla/javascript/xml/XMLLib$Factory$1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lorg/mozilla/javascript/xml/XMLLib$Factory$1;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public abstract getImplementationClassName()Ljava/lang/String;
.end method
