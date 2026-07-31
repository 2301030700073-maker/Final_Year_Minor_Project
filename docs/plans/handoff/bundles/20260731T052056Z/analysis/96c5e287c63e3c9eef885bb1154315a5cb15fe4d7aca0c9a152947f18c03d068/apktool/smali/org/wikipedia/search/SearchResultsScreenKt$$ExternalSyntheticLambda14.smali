.class public final synthetic Lorg/wikipedia/search/SearchResultsScreenKt$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lkotlin/jvm/functions/Function4;

.field public final synthetic f$1:Lorg/wikipedia/search/SearchResult;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function4;Lorg/wikipedia/search/SearchResult;II)V
    .locals 0

    .line 1
    iput p4, p0, Lorg/wikipedia/search/SearchResultsScreenKt$$ExternalSyntheticLambda14;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/search/SearchResultsScreenKt$$ExternalSyntheticLambda14;->f$0:Lkotlin/jvm/functions/Function4;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/wikipedia/search/SearchResultsScreenKt$$ExternalSyntheticLambda14;->f$1:Lorg/wikipedia/search/SearchResult;

    .line 6
    .line 7
    iput p3, p0, Lorg/wikipedia/search/SearchResultsScreenKt$$ExternalSyntheticLambda14;->f$2:I

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    .line 1
    iget v0, p0, Lorg/wikipedia/search/SearchResultsScreenKt$$ExternalSyntheticLambda14;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget v2, p0, Lorg/wikipedia/search/SearchResultsScreenKt$$ExternalSyntheticLambda14;->f$2:I

    .line 6
    .line 7
    iget-object v3, p0, Lorg/wikipedia/search/SearchResultsScreenKt$$ExternalSyntheticLambda14;->f$1:Lorg/wikipedia/search/SearchResult;

    .line 8
    .line 9
    iget-object p0, p0, Lorg/wikipedia/search/SearchResultsScreenKt$$ExternalSyntheticLambda14;->f$0:Lkotlin/jvm/functions/Function4;

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 15
    .line 16
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v3}, Lorg/wikipedia/search/SearchResult;->getLocation()Landroid/location/Location;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    invoke-interface {p0, v3, v0, v2, v4}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    return-object v1

    .line 28
    :pswitch_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 29
    .line 30
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v3}, Lorg/wikipedia/search/SearchResult;->getLocation()Landroid/location/Location;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-interface {p0, v3, v0, v2, v4}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    return-object v1

    .line 42
    :pswitch_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 43
    .line 44
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v3}, Lorg/wikipedia/search/SearchResult;->getLocation()Landroid/location/Location;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    invoke-interface {p0, v3, v0, v2, v4}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    return-object v1

    .line 56
    nop

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
