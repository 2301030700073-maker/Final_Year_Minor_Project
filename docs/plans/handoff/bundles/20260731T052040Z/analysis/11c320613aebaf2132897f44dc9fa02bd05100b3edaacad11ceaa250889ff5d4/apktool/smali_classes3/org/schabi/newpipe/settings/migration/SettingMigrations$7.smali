.class public final Lorg/schabi/newpipe/settings/migration/SettingMigrations$7;
.super Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(III)V
    .locals 1

    .line 1
    iput p3, p0, Lorg/schabi/newpipe/settings/migration/SettingMigrations$7;->$r8$classId:I

    .line 2
    .line 3
    const/4 p3, 0x1

    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;-><init>(IIIB)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final migrate(Lorg/schabi/newpipe/App;)V
    .locals 3

    .line 1
    iget p0, p0, Lorg/schabi/newpipe/settings/migration/SettingMigrations$7;->$r8$classId:I

    .line 2
    .line 3
    const/16 v0, 0x12

    .line 4
    .line 5
    packed-switch p0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p0, Lcoil3/ComponentRegistry$Builder;

    .line 9
    .line 10
    invoke-direct {p0, p1, v0}, Lcoil3/ComponentRegistry$Builder;-><init>(Landroid/content/Context;I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcoil3/ComponentRegistry$Builder;->getTabs()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-static {p1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    new-instance v1, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda48;

    .line 22
    .line 23
    const/16 v2, 0x13

    .line 24
    .line 25
    invoke-direct {v1, v2}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda48;-><init>(I)V

    .line 26
    .line 27
    .line 28
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {}, Lj$/util/stream/Collectors;->toUnmodifiableList()Lj$/util/stream/Collector;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Ljava/util/List;

    .line 41
    .line 42
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-eq v1, v2, :cond_0

    .line 51
    .line 52
    invoke-virtual {p0, v0}, Lcoil3/ComponentRegistry$Builder;->saveTabs(Ljava/util/List;)V

    .line 53
    .line 54
    .line 55
    :cond_0
    invoke-static {p1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    new-instance v1, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda48;

    .line 60
    .line 61
    const/16 v2, 0x14

    .line 62
    .line 63
    invoke-direct {v1, v2}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda48;-><init>(I)V

    .line 64
    .line 65
    .line 66
    invoke-interface {p0, v1}, Lj$/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    .line 67
    .line 68
    .line 69
    move-result p0

    .line 70
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-ne p1, v0, :cond_1

    .line 79
    .line 80
    if-eqz p0, :cond_2

    .line 81
    .line 82
    :cond_1
    new-instance p0, Lorg/schabi/newpipe/settings/migration/SettingMigrations$7$$ExternalSyntheticLambda1;

    .line 83
    .line 84
    const/4 p1, 0x1

    .line 85
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/settings/migration/SettingMigrations$7$$ExternalSyntheticLambda1;-><init>(I)V

    .line 86
    .line 87
    .line 88
    sget-object p1, Lorg/schabi/newpipe/settings/migration/MigrationManager;->MIGRATION_INFO:Ljava/util/ArrayList;

    .line 89
    .line 90
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    :cond_2
    return-void

    .line 94
    :pswitch_0
    new-instance p0, Lcoil3/ComponentRegistry$Builder;

    .line 95
    .line 96
    invoke-direct {p0, p1, v0}, Lcoil3/ComponentRegistry$Builder;-><init>(Landroid/content/Context;I)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0}, Lcoil3/ComponentRegistry$Builder;->getTabs()Ljava/util/List;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-static {p1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    new-instance v2, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda48;

    .line 108
    .line 109
    invoke-direct {v2, v0}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda48;-><init>(I)V

    .line 110
    .line 111
    .line 112
    invoke-interface {v1, v2}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-static {}, Lj$/util/stream/Collectors;->toUnmodifiableList()Lj$/util/stream/Collector;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    check-cast v0, Ljava/util/List;

    .line 125
    .line 126
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 127
    .line 128
    .line 129
    move-result p1

    .line 130
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    if-eq p1, v1, :cond_3

    .line 135
    .line 136
    invoke-virtual {p0, v0}, Lcoil3/ComponentRegistry$Builder;->saveTabs(Ljava/util/List;)V

    .line 137
    .line 138
    .line 139
    new-instance p0, Lorg/schabi/newpipe/settings/migration/SettingMigrations$7$$ExternalSyntheticLambda1;

    .line 140
    .line 141
    const/4 p1, 0x0

    .line 142
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/settings/migration/SettingMigrations$7$$ExternalSyntheticLambda1;-><init>(I)V

    .line 143
    .line 144
    .line 145
    sget-object p1, Lorg/schabi/newpipe/settings/migration/MigrationManager;->MIGRATION_INFO:Ljava/util/ArrayList;

    .line 146
    .line 147
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    :cond_3
    return-void

    .line 151
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
