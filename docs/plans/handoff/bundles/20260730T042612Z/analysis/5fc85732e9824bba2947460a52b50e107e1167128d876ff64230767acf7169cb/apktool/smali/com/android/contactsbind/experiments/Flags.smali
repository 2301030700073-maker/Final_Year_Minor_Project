.class public final Lcom/android/contactsbind/experiments/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static sInstance:Lcom/android/contactsbind/experiments/Flags;


# instance fields
.field private mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/contactsbind/experiments/Flags;->mMap:Ljava/util/Map;

    return-void
.end method

.method public static getInstance()Lcom/android/contactsbind/experiments/Flags;
    .locals 1

    .line 32
    sget-object v0, Lcom/android/contactsbind/experiments/Flags;->sInstance:Lcom/android/contactsbind/experiments/Flags;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/android/contactsbind/experiments/Flags;

    invoke-direct {v0}, Lcom/android/contactsbind/experiments/Flags;-><init>()V

    sput-object v0, Lcom/android/contactsbind/experiments/Flags;->sInstance:Lcom/android/contactsbind/experiments/Flags;

    .line 35
    :cond_0
    sget-object v0, Lcom/android/contactsbind/experiments/Flags;->sInstance:Lcom/android/contactsbind/experiments/Flags;

    return-object v0
.end method


# virtual methods
.method public getBoolean(Ljava/lang/String;)Z
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/android/contactsbind/experiments/Flags;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contactsbind/experiments/Flags;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getInteger(Ljava/lang/String;)I
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/android/contactsbind/experiments/Flags;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contactsbind/experiments/Flags;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
