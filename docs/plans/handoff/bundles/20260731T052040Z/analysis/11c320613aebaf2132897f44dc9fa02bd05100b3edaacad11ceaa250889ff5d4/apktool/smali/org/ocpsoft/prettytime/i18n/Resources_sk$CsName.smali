.class Lorg/ocpsoft/prettytime/i18n/Resources_sk$CsName;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ocpsoft/prettytime/i18n/Resources_sk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CsName"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/ocpsoft/prettytime/i18n/Resources_sk$CsName;",
        ">;"
    }
.end annotation


# instance fields
.field private final isFuture:Z

.field private final threshold:Ljava/lang/Long;

.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLjava/lang/String;Ljava/lang/Long;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lorg/ocpsoft/prettytime/i18n/Resources_sk$CsName;->isFuture:Z

    .line 5
    .line 6
    iput-object p2, p0, Lorg/ocpsoft/prettytime/i18n/Resources_sk$CsName;->value:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lorg/ocpsoft/prettytime/i18n/Resources_sk$CsName;->threshold:Ljava/lang/Long;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 16
    check-cast p1, Lorg/ocpsoft/prettytime/i18n/Resources_sk$CsName;

    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/i18n/Resources_sk$CsName;->compareTo(Lorg/ocpsoft/prettytime/i18n/Resources_sk$CsName;)I

    move-result p0

    return p0
.end method

.method public compareTo(Lorg/ocpsoft/prettytime/i18n/Resources_sk$CsName;)I
    .locals 2

    .line 1
    iget-object p0, p0, Lorg/ocpsoft/prettytime/i18n/Resources_sk$CsName;->threshold:Ljava/lang/Long;

    .line 2
    .line 3
    invoke-virtual {p1}, Lorg/ocpsoft/prettytime/i18n/Resources_sk$CsName;->getThreshold()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p0, p1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public get()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/ocpsoft/prettytime/i18n/Resources_sk$CsName;->value:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getThreshold()J
    .locals 2

    .line 1
    iget-object p0, p0, Lorg/ocpsoft/prettytime/i18n/Resources_sk$CsName;->threshold:Ljava/lang/Long;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public isFuture()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/ocpsoft/prettytime/i18n/Resources_sk$CsName;->isFuture:Z

    .line 2
    .line 3
    return p0
.end method
