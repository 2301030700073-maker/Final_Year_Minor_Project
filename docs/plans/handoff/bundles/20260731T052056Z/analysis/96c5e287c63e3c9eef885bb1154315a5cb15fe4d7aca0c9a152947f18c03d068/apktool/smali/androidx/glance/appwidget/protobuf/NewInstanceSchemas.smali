.class public abstract Landroidx/glance/appwidget/protobuf/NewInstanceSchemas;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final FULL_SCHEMA:Landroidx/glance/appwidget/protobuf/NewInstanceSchemaLite;

.field public static final LITE_SCHEMA:Landroidx/glance/appwidget/protobuf/NewInstanceSchemaLite;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Landroidx/glance/appwidget/protobuf/Protobuf;->INSTANCE:Landroidx/glance/appwidget/protobuf/Protobuf;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    :try_start_0
    const-string v1, "androidx.glance.appwidget.protobuf.NewInstanceSchemaFull"

    .line 5
    .line 6
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Landroidx/glance/appwidget/protobuf/NewInstanceSchemaLite;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    move-object v0, v1

    .line 21
    :catch_0
    sput-object v0, Landroidx/glance/appwidget/protobuf/NewInstanceSchemas;->FULL_SCHEMA:Landroidx/glance/appwidget/protobuf/NewInstanceSchemaLite;

    .line 22
    .line 23
    new-instance v0, Landroidx/glance/appwidget/protobuf/NewInstanceSchemaLite;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 26
    .line 27
    .line 28
    sput-object v0, Landroidx/glance/appwidget/protobuf/NewInstanceSchemas;->LITE_SCHEMA:Landroidx/glance/appwidget/protobuf/NewInstanceSchemaLite;

    .line 29
    .line 30
    return-void
.end method
