.class public final Lcom/eygraber/uri/Uri$Companion;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final synthetic $$INSTANCE:Lcom/eygraber/uri/Uri$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/eygraber/uri/Uri$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/eygraber/uri/Uri$Companion;->$$INSTANCE:Lcom/eygraber/uri/Uri$Companion;

    .line 7
    .line 8
    new-instance v1, Lcom/eygraber/uri/uris/HierarchicalUri;

    .line 9
    .line 10
    sget-object v3, Lcom/eygraber/uri/parts/Part;->NULL:Lcom/eygraber/uri/parts/Part$EmptyPart;

    .line 11
    .line 12
    sget-object v4, Lcom/eygraber/uri/parts/PathPart;->EMPTY:Lcom/eygraber/uri/parts/PathPart;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    move-object v5, v3

    .line 16
    move-object v6, v3

    .line 17
    invoke-direct/range {v1 .. v6}, Lcom/eygraber/uri/uris/HierarchicalUri;-><init>(Ljava/lang/String;Lcom/eygraber/uri/parts/Part;Lcom/eygraber/uri/parts/PathPart;Lcom/eygraber/uri/parts/Part;Lcom/eygraber/uri/parts/Part;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final serializer()Lkotlinx/serialization/KSerializer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer;"
        }
    .end annotation

    .line 1
    sget-object p0, Lcom/eygraber/uri/UriSerializer;->INSTANCE:Lcom/eygraber/uri/UriSerializer;

    .line 2
    .line 3
    return-object p0
.end method
