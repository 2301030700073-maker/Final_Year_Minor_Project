.class public abstract Lio/noties/markwon/core/CoreProps;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final BULLET_LIST_ITEM_LEVEL:Lio/noties/markwon/Prop;

.field public static final CODE_BLOCK_INFO:Lio/noties/markwon/Prop;

.field public static final HEADING_LEVEL:Lio/noties/markwon/Prop;

.field public static final LINK_DESTINATION:Lio/noties/markwon/Prop;

.field public static final LIST_ITEM_TYPE:Lio/noties/markwon/Prop;

.field public static final ORDERED_LIST_ITEM_NUMBER:Lio/noties/markwon/Prop;

.field public static final PARAGRAPH_IS_IN_TIGHT_LIST:Lio/noties/markwon/Prop;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lio/noties/markwon/Prop;

    .line 2
    .line 3
    const-string v1, "list-item-type"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lio/noties/markwon/Prop;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lio/noties/markwon/core/CoreProps;->LIST_ITEM_TYPE:Lio/noties/markwon/Prop;

    .line 9
    .line 10
    new-instance v0, Lio/noties/markwon/Prop;

    .line 11
    .line 12
    const-string v1, "bullet-list-item-level"

    .line 13
    .line 14
    invoke-direct {v0, v1}, Lio/noties/markwon/Prop;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lio/noties/markwon/core/CoreProps;->BULLET_LIST_ITEM_LEVEL:Lio/noties/markwon/Prop;

    .line 18
    .line 19
    new-instance v0, Lio/noties/markwon/Prop;

    .line 20
    .line 21
    const-string v1, "ordered-list-item-number"

    .line 22
    .line 23
    invoke-direct {v0, v1}, Lio/noties/markwon/Prop;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    sput-object v0, Lio/noties/markwon/core/CoreProps;->ORDERED_LIST_ITEM_NUMBER:Lio/noties/markwon/Prop;

    .line 27
    .line 28
    new-instance v0, Lio/noties/markwon/Prop;

    .line 29
    .line 30
    const-string v1, "heading-level"

    .line 31
    .line 32
    invoke-direct {v0, v1}, Lio/noties/markwon/Prop;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lio/noties/markwon/core/CoreProps;->HEADING_LEVEL:Lio/noties/markwon/Prop;

    .line 36
    .line 37
    new-instance v0, Lio/noties/markwon/Prop;

    .line 38
    .line 39
    const-string v1, "link-destination"

    .line 40
    .line 41
    invoke-direct {v0, v1}, Lio/noties/markwon/Prop;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    sput-object v0, Lio/noties/markwon/core/CoreProps;->LINK_DESTINATION:Lio/noties/markwon/Prop;

    .line 45
    .line 46
    new-instance v0, Lio/noties/markwon/Prop;

    .line 47
    .line 48
    const-string v1, "paragraph-is-in-tight-list"

    .line 49
    .line 50
    invoke-direct {v0, v1}, Lio/noties/markwon/Prop;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    sput-object v0, Lio/noties/markwon/core/CoreProps;->PARAGRAPH_IS_IN_TIGHT_LIST:Lio/noties/markwon/Prop;

    .line 54
    .line 55
    new-instance v0, Lio/noties/markwon/Prop;

    .line 56
    .line 57
    const-string v1, "code-block-info"

    .line 58
    .line 59
    invoke-direct {v0, v1}, Lio/noties/markwon/Prop;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    sput-object v0, Lio/noties/markwon/core/CoreProps;->CODE_BLOCK_INFO:Lio/noties/markwon/Prop;

    .line 63
    .line 64
    return-void
.end method
