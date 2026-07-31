.class Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ocpsoft/prettytime/i18n/Resources_hr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HrTimeFormatBuilder"
.end annotation


# instance fields
.field private final names:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrName;",
            ">;"
        }
    .end annotation
.end field

.field private final resourceKeyPrefix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;->names:Ljava/util/List;

    .line 10
    .line 11
    iput-object p1, p0, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;->resourceKeyPrefix:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method private addName(ZLjava/lang/String;J)Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;->names:Ljava/util/List;

    .line 2
    .line 3
    new-instance v1, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrName;

    .line 4
    .line 5
    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 9
    .line 10
    .line 11
    move-result-object p3

    .line 12
    invoke-direct {v1, p1, p2, p3}, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrName;-><init>(ZLjava/lang/String;Ljava/lang/Long;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    return-object p0
.end method


# virtual methods
.method public addNames(Ljava/lang/String;J)Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0, p1, p2, p3}, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;->addName(ZLjava/lang/String;J)Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, v0, p1, p2, p3}, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;->addName(ZLjava/lang/String;J)Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public build(Ljava/util/ResourceBundle;)Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormat;
    .locals 2

    .line 1
    new-instance v0, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormat;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;->resourceKeyPrefix:Ljava/lang/String;

    .line 4
    .line 5
    iget-object p0, p0, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;->names:Ljava/util/List;

    .line 6
    .line 7
    invoke-direct {v0, v1, p1, p0}, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormat;-><init>(Ljava/lang/String;Ljava/util/ResourceBundle;Ljava/util/Collection;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method
