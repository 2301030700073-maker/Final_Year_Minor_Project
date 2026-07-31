.class public final synthetic Lorg/schabi/newpipe/extractor/NewPipe$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/schabi/newpipe/extractor/NewPipe$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput p1, p0, Lorg/schabi/newpipe/extractor/NewPipe$$ExternalSyntheticLambda0;->f$0:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public synthetic and(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;
    .locals 1

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/extractor/NewPipe$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    invoke-static {p0, p1}, Lj$/util/function/Predicate$-CC;->$default$and(Ljava/util/function/Predicate;Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public synthetic negate()Ljava/util/function/Predicate;
    .locals 1

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/extractor/NewPipe$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    invoke-static {p0}, Lj$/util/function/Predicate$-CC;->$default$negate(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public synthetic or(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;
    .locals 1

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/extractor/NewPipe$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    invoke-static {p0, p1}, Lj$/util/function/Predicate$-CC;->$default$or(Ljava/util/function/Predicate;Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final test(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/extractor/NewPipe$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    iget p0, p0, Lorg/schabi/newpipe/extractor/NewPipe$$ExternalSyntheticLambda0;->f$0:I

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p1, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceFuzzySearchFunction$FuzzySearchGeneralDTO;

    .line 11
    .line 12
    iget p1, p1, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceFuzzySearchFunction$FuzzySearchGeneralDTO;->score:F

    .line 13
    .line 14
    int-to-float p0, p0

    .line 15
    div-float/2addr p1, p0

    .line 16
    const p0, 0x3e99999a    # 0.3f

    .line 17
    .line 18
    .line 19
    cmpl-float p0, p1, p0

    .line 20
    .line 21
    if-ltz p0, :cond_0

    .line 22
    .line 23
    move v1, v2

    .line 24
    :cond_0
    return v1

    .line 25
    :pswitch_0
    check-cast p1, Lorg/schabi/newpipe/settings/SettingsResourceRegistry$SettingRegistryEntry;

    .line 26
    .line 27
    iget p1, p1, Lorg/schabi/newpipe/settings/SettingsResourceRegistry$SettingRegistryEntry;->preferencesResId:I

    .line 28
    .line 29
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    return p0

    .line 42
    :pswitch_1
    check-cast p1, Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 43
    .line 44
    iget p1, p1, Lorg/schabi/newpipe/extractor/MediaFormat;->id:I

    .line 45
    .line 46
    if-ne p1, p0, :cond_1

    .line 47
    .line 48
    move v1, v2

    .line 49
    :cond_1
    return v1

    .line 50
    :pswitch_2
    check-cast p1, Lorg/schabi/newpipe/extractor/StreamingService;

    .line 51
    .line 52
    iget p1, p1, Lorg/schabi/newpipe/extractor/StreamingService;->serviceId:I

    .line 53
    .line 54
    if-ne p1, p0, :cond_2

    .line 55
    .line 56
    move v1, v2

    .line 57
    :cond_2
    return v1

    .line 58
    nop

    .line 59
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
