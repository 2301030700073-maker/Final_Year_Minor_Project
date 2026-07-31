.class public final Landroidx/glance/appwidget/LayoutStateDefinition$getDataStore$2;
.super Lkotlin/jvm/internal/Lambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $context:Landroid/content/Context;

.field public final synthetic $fileKey:Ljava/lang/String;

.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(ILandroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/glance/appwidget/LayoutStateDefinition$getDataStore$2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/glance/appwidget/LayoutStateDefinition$getDataStore$2;->$context:Landroid/content/Context;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/glance/appwidget/LayoutStateDefinition$getDataStore$2;->$fileKey:Ljava/lang/String;

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Landroidx/glance/appwidget/LayoutStateDefinition$getDataStore$2;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/glance/appwidget/LayoutStateDefinition$getDataStore$2;->$fileKey:Ljava/lang/String;

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/glance/appwidget/LayoutStateDefinition$getDataStore$2;->$context:Landroid/content/Context;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    invoke-static {p0, v1}, Lkotlin/ResultKt;->preferencesDataStoreFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0

    .line 15
    :pswitch_0
    invoke-static {p0, v1}, Lkotlin/ExceptionsKt;->dataStoreFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    nop

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
