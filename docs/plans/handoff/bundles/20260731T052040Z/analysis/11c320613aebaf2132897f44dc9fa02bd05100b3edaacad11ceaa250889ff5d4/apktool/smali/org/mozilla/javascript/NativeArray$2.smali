.class Lorg/mozilla/javascript/NativeArray$2;
.super Ljava/util/AbstractList;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/javascript/NativeArray;->subList(II)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private mc:I

.field final synthetic this$0:Lorg/mozilla/javascript/NativeArray;

.field final synthetic val$fromIndex:I

.field final synthetic val$toIndex:I


# direct methods
.method public constructor <init>(Lorg/mozilla/javascript/NativeArray;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/mozilla/javascript/NativeArray$2;->this$0:Lorg/mozilla/javascript/NativeArray;

    .line 2
    .line 3
    iput p2, p0, Lorg/mozilla/javascript/NativeArray$2;->val$fromIndex:I

    .line 4
    .line 5
    iput p3, p0, Lorg/mozilla/javascript/NativeArray$2;->val$toIndex:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Lorg/mozilla/javascript/NativeArray;->-$$Nest$fgetmodCount(Lorg/mozilla/javascript/NativeArray;)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    iput p1, p0, Lorg/mozilla/javascript/NativeArray$2;->mc:I

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/mozilla/javascript/NativeArray$2;->this$0:Lorg/mozilla/javascript/NativeArray;

    .line 2
    .line 3
    iget v1, p0, Lorg/mozilla/javascript/NativeArray$2;->mc:I

    .line 4
    .line 5
    invoke-static {v0, v1}, Lorg/mozilla/javascript/NativeArray;->-$$Nest$mcheckModCount(Lorg/mozilla/javascript/NativeArray;I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lorg/mozilla/javascript/NativeArray$2;->this$0:Lorg/mozilla/javascript/NativeArray;

    .line 9
    .line 10
    iget p0, p0, Lorg/mozilla/javascript/NativeArray$2;->val$fromIndex:I

    .line 11
    .line 12
    add-int/2addr p1, p0

    .line 13
    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/NativeArray;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public size()I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/mozilla/javascript/NativeArray$2;->this$0:Lorg/mozilla/javascript/NativeArray;

    .line 2
    .line 3
    iget v1, p0, Lorg/mozilla/javascript/NativeArray$2;->mc:I

    .line 4
    .line 5
    invoke-static {v0, v1}, Lorg/mozilla/javascript/NativeArray;->-$$Nest$mcheckModCount(Lorg/mozilla/javascript/NativeArray;I)V

    .line 6
    .line 7
    .line 8
    iget v0, p0, Lorg/mozilla/javascript/NativeArray$2;->val$toIndex:I

    .line 9
    .line 10
    iget p0, p0, Lorg/mozilla/javascript/NativeArray$2;->val$fromIndex:I

    .line 11
    .line 12
    sub-int/2addr v0, p0

    .line 13
    return v0
.end method
