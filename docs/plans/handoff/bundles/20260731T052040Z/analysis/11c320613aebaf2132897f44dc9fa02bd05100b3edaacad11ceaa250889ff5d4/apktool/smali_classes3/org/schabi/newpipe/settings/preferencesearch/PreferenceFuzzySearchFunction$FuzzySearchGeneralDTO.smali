.class public final Lorg/schabi/newpipe/settings/preferencesearch/PreferenceFuzzySearchFunction$FuzzySearchGeneralDTO;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final item:Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;

.field public final score:F


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceFuzzySearchFunction$FuzzySearchGeneralDTO;->item:Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;

    .line 5
    .line 6
    sget-object v0, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceFuzzySearchFunction;->FUZZY_SCORE:Lokio/ByteString$Companion;

    .line 7
    .line 8
    iget-object v1, p1, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;->title:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v2, p1, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;->summary:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v3, p1, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;->entries:Ljava/lang/String;

    .line 13
    .line 14
    iget-object p1, p1, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;->breadcrumbs:Ljava/lang/String;

    .line 15
    .line 16
    filled-new-array {v1, v2, v3, p1}, [Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-static {p1}, Lorg/jsoup/Jsoup;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const-string v1, ";"

    .line 25
    .line 26
    invoke-static {v1, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {v0, p1, p2}, Lokio/ByteString$Companion;->fuzzyScore(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    int-to-float p1, p1

    .line 39
    iput p1, p0, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceFuzzySearchFunction$FuzzySearchGeneralDTO;->score:F

    .line 40
    .line 41
    return-void
.end method
