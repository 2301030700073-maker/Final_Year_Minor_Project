.class public abstract Lorg/schabi/newpipe/settings/tabs/Tab;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# direct methods
.method public constructor <init>(Lcom/grack/nanojson/JsonObject;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/settings/tabs/Tab;->readDataFromJson(Lcom/grack/nanojson/JsonObject;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public static typeFrom(I)Lorg/schabi/newpipe/settings/tabs/Tab$Type;
    .locals 5

    .line 1
    invoke-static {}, Lorg/schabi/newpipe/settings/tabs/Tab$Type;->values()[Lorg/schabi/newpipe/settings/tabs/Tab$Type;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_0
    if-ge v2, v1, :cond_1

    .line 8
    .line 9
    aget-object v3, v0, v2

    .line 10
    .line 11
    invoke-virtual {v3}, Lorg/schabi/newpipe/settings/tabs/Tab$Type;->getTabId()I

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    if-ne v4, p0, :cond_0

    .line 16
    .line 17
    return-object v3

    .line 18
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 p0, 0x0

    .line 22
    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lorg/schabi/newpipe/settings/tabs/Tab;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    check-cast p1, Lorg/schabi/newpipe/settings/tabs/Tab;

    .line 7
    .line 8
    invoke-virtual {p0}, Lorg/schabi/newpipe/settings/tabs/Tab;->getTabId()I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    invoke-virtual {p1}, Lorg/schabi/newpipe/settings/tabs/Tab;->getTabId()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-ne p0, p1, :cond_1

    .line 17
    .line 18
    const/4 p0, 0x1

    .line 19
    return p0

    .line 20
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 21
    return p0
.end method

.method public abstract getFragment()Landroidx/fragment/app/Fragment;
.end method

.method public abstract getTabIconRes(Landroid/content/Context;)I
.end method

.method public abstract getTabId()I
.end method

.method public abstract getTabName(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public hashCode()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/schabi/newpipe/settings/tabs/Tab;->getTabId()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public readDataFromJson(Lcom/grack/nanojson/JsonObject;)V
    .locals 0

    .line 1
    return-void
.end method

.method public writeDataToJson(Lcom/grack/nanojson/JsonStringWriter;)V
    .locals 0

    .line 1
    return-void
.end method
