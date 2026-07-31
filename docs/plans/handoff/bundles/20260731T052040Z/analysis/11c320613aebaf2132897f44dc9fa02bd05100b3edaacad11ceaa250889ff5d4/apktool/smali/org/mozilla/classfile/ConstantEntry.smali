.class public final Lorg/mozilla/classfile/ConstantEntry;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public hashcode:I

.field public intval:I

.field public str1:Ljava/lang/String;

.field public str2:Ljava/lang/String;


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/mozilla/classfile/ConstantEntry;->str2:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/mozilla/classfile/ConstantEntry;->str1:Ljava/lang/String;

    .line 4
    .line 5
    iget p0, p0, Lorg/mozilla/classfile/ConstantEntry;->intval:I

    .line 6
    .line 7
    instance-of v2, p1, Lorg/mozilla/classfile/ConstantEntry;

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    check-cast p1, Lorg/mozilla/classfile/ConstantEntry;

    .line 13
    .line 14
    iget-object v2, p1, Lorg/mozilla/classfile/ConstantEntry;->str2:Ljava/lang/String;

    .line 15
    .line 16
    iget-object v3, p1, Lorg/mozilla/classfile/ConstantEntry;->str1:Ljava/lang/String;

    .line 17
    .line 18
    iget p1, p1, Lorg/mozilla/classfile/ConstantEntry;->intval:I

    .line 19
    .line 20
    if-ne p0, p1, :cond_1

    .line 21
    .line 22
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    if-eqz p0, :cond_1

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    if-eqz p0, :cond_1

    .line 33
    .line 34
    const/4 p0, 0x1

    .line 35
    return p0

    .line 36
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 37
    return p0
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/mozilla/classfile/ConstantEntry;->hashcode:I

    .line 2
    .line 3
    return p0
.end method
