.class public abstract Lorg/schabi/newpipe/database/Migrations;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final MIGRATION_1_2:Landroidx/room/migration/MigrationImpl;

.field public static final MIGRATION_2_3:Landroidx/room/migration/MigrationImpl;

.field public static final MIGRATION_3_4:Landroidx/room/migration/MigrationImpl;

.field public static final MIGRATION_4_5:Landroidx/room/migration/MigrationImpl;

.field public static final MIGRATION_5_6:Landroidx/room/migration/MigrationImpl;

.field public static final MIGRATION_6_7:Landroidx/room/migration/MigrationImpl;

.field public static final MIGRATION_7_8:Landroidx/room/migration/MigrationImpl;

.field public static final MIGRATION_8_9:Landroidx/room/migration/MigrationImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    sget v0, Lorg/schabi/newpipe/MainActivity;->$r8$clinit:I

    .line 2
    .line 3
    new-instance v0, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda3;

    .line 4
    .line 5
    const/16 v1, 0xf

    .line 6
    .line 7
    invoke-direct {v0, v1}, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda3;-><init>(I)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Landroidx/room/migration/MigrationImpl;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    const/4 v3, 0x2

    .line 14
    invoke-direct {v1, v2, v3, v0}, Landroidx/room/migration/MigrationImpl;-><init>(IILkotlin/jvm/functions/Function1;)V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lorg/schabi/newpipe/database/Migrations;->MIGRATION_1_2:Landroidx/room/migration/MigrationImpl;

    .line 18
    .line 19
    new-instance v0, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda3;

    .line 20
    .line 21
    const/16 v1, 0x10

    .line 22
    .line 23
    invoke-direct {v0, v1}, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda3;-><init>(I)V

    .line 24
    .line 25
    .line 26
    new-instance v1, Landroidx/room/migration/MigrationImpl;

    .line 27
    .line 28
    const/4 v2, 0x3

    .line 29
    invoke-direct {v1, v3, v2, v0}, Landroidx/room/migration/MigrationImpl;-><init>(IILkotlin/jvm/functions/Function1;)V

    .line 30
    .line 31
    .line 32
    sput-object v1, Lorg/schabi/newpipe/database/Migrations;->MIGRATION_2_3:Landroidx/room/migration/MigrationImpl;

    .line 33
    .line 34
    new-instance v0, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda3;

    .line 35
    .line 36
    const/16 v1, 0x11

    .line 37
    .line 38
    invoke-direct {v0, v1}, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda3;-><init>(I)V

    .line 39
    .line 40
    .line 41
    new-instance v1, Landroidx/room/migration/MigrationImpl;

    .line 42
    .line 43
    const/4 v3, 0x4

    .line 44
    invoke-direct {v1, v2, v3, v0}, Landroidx/room/migration/MigrationImpl;-><init>(IILkotlin/jvm/functions/Function1;)V

    .line 45
    .line 46
    .line 47
    sput-object v1, Lorg/schabi/newpipe/database/Migrations;->MIGRATION_3_4:Landroidx/room/migration/MigrationImpl;

    .line 48
    .line 49
    new-instance v0, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda3;

    .line 50
    .line 51
    const/16 v1, 0x12

    .line 52
    .line 53
    invoke-direct {v0, v1}, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda3;-><init>(I)V

    .line 54
    .line 55
    .line 56
    new-instance v1, Landroidx/room/migration/MigrationImpl;

    .line 57
    .line 58
    const/4 v2, 0x5

    .line 59
    invoke-direct {v1, v3, v2, v0}, Landroidx/room/migration/MigrationImpl;-><init>(IILkotlin/jvm/functions/Function1;)V

    .line 60
    .line 61
    .line 62
    sput-object v1, Lorg/schabi/newpipe/database/Migrations;->MIGRATION_4_5:Landroidx/room/migration/MigrationImpl;

    .line 63
    .line 64
    new-instance v0, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda3;

    .line 65
    .line 66
    const/16 v1, 0x13

    .line 67
    .line 68
    invoke-direct {v0, v1}, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda3;-><init>(I)V

    .line 69
    .line 70
    .line 71
    new-instance v1, Landroidx/room/migration/MigrationImpl;

    .line 72
    .line 73
    const/4 v3, 0x6

    .line 74
    invoke-direct {v1, v2, v3, v0}, Landroidx/room/migration/MigrationImpl;-><init>(IILkotlin/jvm/functions/Function1;)V

    .line 75
    .line 76
    .line 77
    sput-object v1, Lorg/schabi/newpipe/database/Migrations;->MIGRATION_5_6:Landroidx/room/migration/MigrationImpl;

    .line 78
    .line 79
    new-instance v0, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda3;

    .line 80
    .line 81
    const/16 v1, 0x14

    .line 82
    .line 83
    invoke-direct {v0, v1}, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda3;-><init>(I)V

    .line 84
    .line 85
    .line 86
    new-instance v1, Landroidx/room/migration/MigrationImpl;

    .line 87
    .line 88
    const/4 v2, 0x7

    .line 89
    invoke-direct {v1, v3, v2, v0}, Landroidx/room/migration/MigrationImpl;-><init>(IILkotlin/jvm/functions/Function1;)V

    .line 90
    .line 91
    .line 92
    sput-object v1, Lorg/schabi/newpipe/database/Migrations;->MIGRATION_6_7:Landroidx/room/migration/MigrationImpl;

    .line 93
    .line 94
    new-instance v0, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda3;

    .line 95
    .line 96
    const/16 v1, 0x15

    .line 97
    .line 98
    invoke-direct {v0, v1}, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda3;-><init>(I)V

    .line 99
    .line 100
    .line 101
    new-instance v1, Landroidx/room/migration/MigrationImpl;

    .line 102
    .line 103
    const/16 v3, 0x8

    .line 104
    .line 105
    invoke-direct {v1, v2, v3, v0}, Landroidx/room/migration/MigrationImpl;-><init>(IILkotlin/jvm/functions/Function1;)V

    .line 106
    .line 107
    .line 108
    sput-object v1, Lorg/schabi/newpipe/database/Migrations;->MIGRATION_7_8:Landroidx/room/migration/MigrationImpl;

    .line 109
    .line 110
    new-instance v0, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda3;

    .line 111
    .line 112
    const/16 v1, 0x16

    .line 113
    .line 114
    invoke-direct {v0, v1}, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda3;-><init>(I)V

    .line 115
    .line 116
    .line 117
    new-instance v1, Landroidx/room/migration/MigrationImpl;

    .line 118
    .line 119
    const/16 v2, 0x9

    .line 120
    .line 121
    invoke-direct {v1, v3, v2, v0}, Landroidx/room/migration/MigrationImpl;-><init>(IILkotlin/jvm/functions/Function1;)V

    .line 122
    .line 123
    .line 124
    sput-object v1, Lorg/schabi/newpipe/database/Migrations;->MIGRATION_8_9:Landroidx/room/migration/MigrationImpl;

    .line 125
    .line 126
    return-void
.end method
