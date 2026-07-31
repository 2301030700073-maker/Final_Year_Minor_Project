.class public abstract Lorg/schabi/newpipe/settings/migration/SettingMigrations;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final SETTING_MIGRATIONS:[Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;

.field public static sp:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 1
    const-class v0, Lorg/schabi/newpipe/settings/migration/SettingMigrations;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    new-instance v0, Lorg/schabi/newpipe/settings/migration/SettingMigrations$1;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-direct {v0, v1, v2, v1}, Lorg/schabi/newpipe/settings/migration/SettingMigrations$1;-><init>(III)V

    .line 11
    .line 12
    .line 13
    new-instance v3, Lorg/schabi/newpipe/settings/migration/SettingMigrations$1;

    .line 14
    .line 15
    const/4 v4, 0x2

    .line 16
    invoke-direct {v3, v2, v4, v2}, Lorg/schabi/newpipe/settings/migration/SettingMigrations$1;-><init>(III)V

    .line 17
    .line 18
    .line 19
    new-instance v5, Lorg/schabi/newpipe/settings/migration/SettingMigrations$1;

    .line 20
    .line 21
    const/4 v6, 0x3

    .line 22
    invoke-direct {v5, v4, v6, v4}, Lorg/schabi/newpipe/settings/migration/SettingMigrations$1;-><init>(III)V

    .line 23
    .line 24
    .line 25
    new-instance v7, Lorg/schabi/newpipe/settings/migration/SettingMigrations$1;

    .line 26
    .line 27
    const/4 v8, 0x4

    .line 28
    invoke-direct {v7, v6, v8, v6}, Lorg/schabi/newpipe/settings/migration/SettingMigrations$1;-><init>(III)V

    .line 29
    .line 30
    .line 31
    new-instance v9, Lorg/schabi/newpipe/settings/migration/SettingMigrations$1;

    .line 32
    .line 33
    const/4 v10, 0x5

    .line 34
    invoke-direct {v9, v8, v10, v8}, Lorg/schabi/newpipe/settings/migration/SettingMigrations$1;-><init>(III)V

    .line 35
    .line 36
    .line 37
    new-instance v11, Lorg/schabi/newpipe/settings/migration/SettingMigrations$1;

    .line 38
    .line 39
    const/4 v12, 0x6

    .line 40
    invoke-direct {v11, v10, v12, v10}, Lorg/schabi/newpipe/settings/migration/SettingMigrations$1;-><init>(III)V

    .line 41
    .line 42
    .line 43
    new-instance v13, Lorg/schabi/newpipe/settings/migration/SettingMigrations$7;

    .line 44
    .line 45
    const/4 v14, 0x7

    .line 46
    invoke-direct {v13, v12, v14, v1}, Lorg/schabi/newpipe/settings/migration/SettingMigrations$7;-><init>(III)V

    .line 47
    .line 48
    .line 49
    new-instance v15, Lorg/schabi/newpipe/settings/migration/SettingMigrations$7;

    .line 50
    .line 51
    move/from16 v16, v1

    .line 52
    .line 53
    const/16 v1, 0x8

    .line 54
    .line 55
    invoke-direct {v15, v14, v1, v2}, Lorg/schabi/newpipe/settings/migration/SettingMigrations$7;-><init>(III)V

    .line 56
    .line 57
    .line 58
    new-array v1, v1, [Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;

    .line 59
    .line 60
    aput-object v0, v1, v16

    .line 61
    .line 62
    aput-object v3, v1, v2

    .line 63
    .line 64
    aput-object v5, v1, v4

    .line 65
    .line 66
    aput-object v7, v1, v6

    .line 67
    .line 68
    aput-object v9, v1, v8

    .line 69
    .line 70
    aput-object v11, v1, v10

    .line 71
    .line 72
    aput-object v13, v1, v12

    .line 73
    .line 74
    aput-object v15, v1, v14

    .line 75
    .line 76
    sput-object v1, Lorg/schabi/newpipe/settings/migration/SettingMigrations;->SETTING_MIGRATIONS:[Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;

    .line 77
    .line 78
    return-void
.end method
