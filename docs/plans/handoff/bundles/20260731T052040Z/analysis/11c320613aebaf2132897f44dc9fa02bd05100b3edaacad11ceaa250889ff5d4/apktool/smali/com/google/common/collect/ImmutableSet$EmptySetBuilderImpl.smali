.class public final Lcom/google/common/collect/ImmutableSet$EmptySetBuilderImpl;
.super Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final INSTANCE:Lcom/google/common/collect/ImmutableSet$EmptySetBuilderImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/common/collect/ImmutableSet$EmptySetBuilderImpl;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;-><init>(II)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/google/common/collect/ImmutableSet$EmptySetBuilderImpl;->INSTANCE:Lcom/google/common/collect/ImmutableSet$EmptySetBuilderImpl;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;
    .locals 1

    .line 1
    new-instance p0, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;

    .line 2
    .line 3
    const/4 v0, 0x4

    .line 4
    invoke-direct {p0, v0}, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;-><init>(I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final build()Lcom/google/common/collect/ImmutableSet;
    .locals 0

    .line 1
    sget p0, Lcom/google/common/collect/ImmutableSet;->$r8$clinit:I

    .line 2
    .line 3
    sget-object p0, Lcom/google/common/collect/RegularImmutableSet;->EMPTY:Lcom/google/common/collect/RegularImmutableSet;

    .line 4
    .line 5
    return-object p0
.end method

.method public final copy()Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;
    .locals 0

    .line 1
    return-object p0
.end method
