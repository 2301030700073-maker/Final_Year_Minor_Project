.class public final Lorg/wikipedia/search/HybridSearchAbCTest;
.super Lorg/jsoup/parser/Token;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final supportedLanguages:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    const-string v0, "apps_hybridsearch"

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-direct {p0, v1, v0}, Lorg/jsoup/parser/Token;-><init>(ILjava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "fr"

    .line 8
    .line 9
    const-string v1, "el"

    .line 10
    .line 11
    const-string v2, "en"

    .line 12
    .line 13
    const-string v3, "pt"

    .line 14
    .line 15
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Landroidx/room/Room;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lorg/wikipedia/search/HybridSearchAbCTest;->supportedLanguages:Ljava/util/List;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final getGroupName()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/parser/Token;->getGroup()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/4 v0, 0x1

    .line 6
    if-eq p0, v0, :cond_1

    .line 7
    .line 8
    const/4 v0, 0x2

    .line 9
    if-eq p0, v0, :cond_0

    .line 10
    .line 11
    const-string p0, "control"

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    const-string p0, "semanticlexical"

    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_1
    const-string p0, "lexicalsemantic"

    .line 18
    .line 19
    return-object p0
.end method

.method public final isHybridSearchEnabled(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-static {}, Lorg/wikipedia/settings/PrefsIoUtil;->getConfig()Lorg/wikipedia/settings/RemoteConfig$RemoteConfigImpl;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigImpl;->androidv1:Lorg/wikipedia/settings/RemoteConfig$RemoteConfigAndroidV1;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, v0, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigAndroidV1;->hybridSearchEnabled:Ljava/lang/Boolean;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v0, v1

    .line 20
    :goto_0
    if-eqz v0, :cond_1

    .line 21
    .line 22
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 23
    .line 24
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->isHybridSearchEnabled()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    invoke-virtual {p0}, Lorg/jsoup/parser/Token;->getGroup()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    invoke-virtual {p0, p1}, Lorg/wikipedia/search/HybridSearchAbCTest;->isLanguageSupported(Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    if-eqz p0, :cond_1

    .line 41
    .line 42
    const/4 p0, 0x1

    .line 43
    return p0

    .line 44
    :cond_1
    return v1
.end method

.method public final isLanguageSupported(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lorg/wikipedia/search/HybridSearchAbCTest;->supportedLanguages:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Ljava/lang/String;

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    invoke-static {v0, p1, v1}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    return v1

    .line 34
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 35
    return p0
.end method
