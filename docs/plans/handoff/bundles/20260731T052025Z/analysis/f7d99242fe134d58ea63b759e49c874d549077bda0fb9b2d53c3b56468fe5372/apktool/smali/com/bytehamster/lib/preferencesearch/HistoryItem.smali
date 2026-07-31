.class public final Lcom/bytehamster/lib/preferencesearch/HistoryItem;
.super Lcom/bytehamster/lib/preferencesearch/ListItem;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final term:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bytehamster/lib/preferencesearch/HistoryItem;->term:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/bytehamster/lib/preferencesearch/HistoryItem;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lcom/bytehamster/lib/preferencesearch/HistoryItem;

    .line 6
    .line 7
    iget-object p1, p1, Lcom/bytehamster/lib/preferencesearch/HistoryItem;->term:Ljava/lang/String;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/bytehamster/lib/preferencesearch/HistoryItem;->term:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    return p0
.end method

.method public final getType()I
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method
