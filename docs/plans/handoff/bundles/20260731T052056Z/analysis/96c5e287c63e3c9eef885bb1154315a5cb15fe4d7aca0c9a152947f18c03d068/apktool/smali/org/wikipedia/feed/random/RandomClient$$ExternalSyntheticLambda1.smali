.class public final synthetic Lorg/wikipedia/feed/random/RandomClient$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/dataclient/WikiSite;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/dataclient/WikiSite;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/feed/random/RandomClient$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/feed/random/RandomClient$$ExternalSyntheticLambda1;->f$0:Lorg/wikipedia/dataclient/WikiSite;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget v0, p0, Lorg/wikipedia/feed/random/RandomClient$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    check-cast p1, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    new-instance v0, Lorg/wikipedia/page/PageTitle;

    .line 12
    .line 13
    iget-object v1, p1, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->title:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {p1}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->thumbUrl()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    iget-object v4, p1, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->description:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v2, p0, Lorg/wikipedia/feed/random/RandomClient$$ExternalSyntheticLambda1;->f$0:Lorg/wikipedia/dataclient/WikiSite;

    .line 22
    .line 23
    iget-object p0, v2, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {p1, p0}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->displayTitle(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    invoke-direct/range {v0 .. v5}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object p0, p1, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->sectionTitle:Ljava/lang/String;

    .line 33
    .line 34
    if-eqz p0, :cond_1

    .line 35
    .line 36
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-nez v1, :cond_0

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    sget-object v1, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 44
    .line 45
    const-string v1, " "

    .line 46
    .line 47
    const-string v2, "_"

    .line 48
    .line 49
    invoke-static {p0, v1, v2}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    iput-object p0, v0, Lorg/wikipedia/page/PageTitle;->fragment:Ljava/lang/String;

    .line 54
    .line 55
    :cond_1
    :goto_0
    iget-object p0, p1, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->extract:Ljava/lang/String;

    .line 56
    .line 57
    if-eqz p0, :cond_2

    .line 58
    .line 59
    invoke-static {p0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    goto :goto_1

    .line 68
    :cond_2
    const/4 p0, 0x0

    .line 69
    :goto_1
    iput-object p0, v0, Lorg/wikipedia/page/PageTitle;->extract:Ljava/lang/String;

    .line 70
    .line 71
    return-object v0

    .line 72
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    iget-object p1, p1, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->description:Ljava/lang/String;

    .line 76
    .line 77
    iget-object p0, p0, Lorg/wikipedia/feed/random/RandomClient$$ExternalSyntheticLambda1;->f$0:Lorg/wikipedia/dataclient/WikiSite;

    .line 78
    .line 79
    iget-object p0, p0, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 80
    .line 81
    const-string v0, "en"

    .line 82
    .line 83
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result p0

    .line 87
    const/4 v0, 0x1

    .line 88
    if-eqz p0, :cond_6

    .line 89
    .line 90
    const-string p0, ""

    .line 91
    .line 92
    if-nez p1, :cond_3

    .line 93
    .line 94
    move-object v1, p0

    .line 95
    goto :goto_2

    .line 96
    :cond_3
    move-object v1, p1

    .line 97
    :goto_2
    const-string v2, "list article"

    .line 98
    .line 99
    invoke-static {v1, v2, v0}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    if-nez v1, :cond_5

    .line 104
    .line 105
    if-nez p1, :cond_4

    .line 106
    .line 107
    move-object p1, p0

    .line 108
    :cond_4
    const-string p0, "list of"

    .line 109
    .line 110
    invoke-static {p1, p0, v0}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 111
    .line 112
    .line 113
    move-result p0

    .line 114
    if-nez p0, :cond_5

    .line 115
    .line 116
    goto :goto_3

    .line 117
    :cond_5
    const/4 v0, 0x0

    .line 118
    :cond_6
    :goto_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    return-object p0

    .line 123
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
