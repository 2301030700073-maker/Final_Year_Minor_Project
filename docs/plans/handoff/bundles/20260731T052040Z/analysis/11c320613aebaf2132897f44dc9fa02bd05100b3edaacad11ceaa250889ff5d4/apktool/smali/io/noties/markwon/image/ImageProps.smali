.class public abstract Lio/noties/markwon/image/ImageProps;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final DESTINATION:Lio/noties/markwon/Prop;

.field public static final IMAGE_SIZE:Lio/noties/markwon/Prop;

.field public static final REPLACEMENT_TEXT_IS_LINK:Lio/noties/markwon/Prop;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lio/noties/markwon/Prop;

    .line 2
    .line 3
    const-string v1, "image-destination"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lio/noties/markwon/Prop;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lio/noties/markwon/image/ImageProps;->DESTINATION:Lio/noties/markwon/Prop;

    .line 9
    .line 10
    new-instance v0, Lio/noties/markwon/Prop;

    .line 11
    .line 12
    const-string v1, "image-replacement-text-is-link"

    .line 13
    .line 14
    invoke-direct {v0, v1}, Lio/noties/markwon/Prop;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lio/noties/markwon/image/ImageProps;->REPLACEMENT_TEXT_IS_LINK:Lio/noties/markwon/Prop;

    .line 18
    .line 19
    new-instance v0, Lio/noties/markwon/Prop;

    .line 20
    .line 21
    const-string v1, "image-size"

    .line 22
    .line 23
    invoke-direct {v0, v1}, Lio/noties/markwon/Prop;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    sput-object v0, Lio/noties/markwon/image/ImageProps;->IMAGE_SIZE:Lio/noties/markwon/Prop;

    .line 27
    .line 28
    return-void
.end method
