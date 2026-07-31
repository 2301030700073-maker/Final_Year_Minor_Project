.class public final Lkotlinx/serialization/json/internal/JsonElementMarker;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public isUnmarkedNull:Z

.field public final origin:Lkotlinx/serialization/internal/ElementMarker;


# direct methods
.method public constructor <init>(Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    new-instance v0, Lkotlinx/serialization/internal/ElementMarker;

    .line 8
    .line 9
    new-instance v1, Lcom/fsck/k9/ui/messageview/MessageViewFragment$onCreate$1;

    .line 10
    .line 11
    const/4 v7, 0x0

    .line 12
    const/16 v8, 0xe

    .line 13
    .line 14
    const/4 v2, 0x2

    .line 15
    const-class v4, Lkotlinx/serialization/json/internal/JsonElementMarker;

    .line 16
    .line 17
    const-string v5, "readIfAbsent"

    .line 18
    .line 19
    const-string v6, "readIfAbsent(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z"

    .line 20
    .line 21
    move-object v3, p0

    .line 22
    invoke-direct/range {v1 .. v8}, Lcom/fsck/k9/ui/messageview/MessageViewFragment$onCreate$1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, p1, v1}, Lkotlinx/serialization/internal/ElementMarker;-><init>(Lkotlinx/serialization/descriptors/SerialDescriptor;Lcom/fsck/k9/ui/messageview/MessageViewFragment$onCreate$1;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, v3, Lkotlinx/serialization/json/internal/JsonElementMarker;->origin:Lkotlinx/serialization/internal/ElementMarker;

    .line 29
    .line 30
    return-void
.end method
