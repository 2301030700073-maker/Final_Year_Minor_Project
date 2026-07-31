.class public interface abstract Lkotlinx/serialization/json/internal/InternalJsonWriter;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final Companion:Lkotlinx/serialization/json/internal/InternalJsonWriter$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/serialization/json/internal/InternalJsonWriter$Companion;->$$INSTANCE:Lkotlinx/serialization/json/internal/InternalJsonWriter$Companion;

    .line 2
    .line 3
    sput-object v0, Lkotlinx/serialization/json/internal/InternalJsonWriter;->Companion:Lkotlinx/serialization/json/internal/InternalJsonWriter$Companion;

    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public abstract write(Ljava/lang/String;)V
.end method

.method public abstract writeChar(C)V
.end method

.method public abstract writeLong(J)V
.end method

.method public abstract writeQuoted(Ljava/lang/String;)V
.end method
