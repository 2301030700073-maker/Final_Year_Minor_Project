.class public final synthetic Lcom/fsck/k9/ui/KoinModuleKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/fsck/k9/ui/KoinModuleKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private final invoke$com$fsck$k9$storage$migrations$MigrationTo84$$ExternalSyntheticLambda0(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    check-cast p1, Landroid/database/Cursor;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x0

    .line 7
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getLong(I)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    new-instance v0, Lcom/fsck/k9/storage/migrations/AddressSet;

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    const/4 v3, 0x0

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    move-object v1, v3

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    :goto_0
    const/4 v2, 0x2

    .line 32
    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-eqz v4, :cond_1

    .line 37
    .line 38
    move-object v2, v3

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    :goto_1
    const/4 v4, 0x3

    .line 45
    invoke-interface {p1, v4}, Landroid/database/Cursor;->isNull(I)Z

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    if-eqz v5, :cond_2

    .line 50
    .line 51
    move-object v4, v3

    .line 52
    goto :goto_2

    .line 53
    :cond_2
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    :goto_2
    const/4 v5, 0x4

    .line 58
    invoke-interface {p1, v5}, Landroid/database/Cursor;->isNull(I)Z

    .line 59
    .line 60
    .line 61
    move-result v6

    .line 62
    if-eqz v6, :cond_3

    .line 63
    .line 64
    move-object v5, v3

    .line 65
    goto :goto_3

    .line 66
    :cond_3
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    :goto_3
    const/4 v6, 0x5

    .line 71
    invoke-interface {p1, v6}, Landroid/database/Cursor;->isNull(I)Z

    .line 72
    .line 73
    .line 74
    move-result v7

    .line 75
    if-eqz v7, :cond_4

    .line 76
    .line 77
    :goto_4
    move-object v8, v5

    .line 78
    move-object v5, v3

    .line 79
    move-object v3, v4

    .line 80
    move-object v4, v8

    .line 81
    goto :goto_5

    .line 82
    :cond_4
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    goto :goto_4

    .line 87
    :goto_5
    invoke-direct/range {v0 .. v5}, Lcom/fsck/k9/storage/migrations/AddressSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    new-instance p1, Lkotlin/Pair;

    .line 91
    .line 92
    invoke-direct {p1, p0, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    return-object p1
.end method

.method private final invoke$com$fsck$k9$ui$base$KoinModuleKt$$ExternalSyntheticLambda0(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    check-cast p1, Lorg/koin/core/module/Module;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v4, Lcom/fsck/k9/ui/base/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 7
    .line 8
    const/4 p0, 0x0

    .line 9
    invoke-direct {v4, p0}, Lcom/fsck/k9/ui/base/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 10
    .line 11
    .line 12
    new-instance v0, Lorg/koin/core/definition/BeanDefinition;

    .line 13
    .line 14
    const-class p0, Lnet/thunderbird/core/ui/theme/manager/ThemeManager;

    .line 15
    .line 16
    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    sget-object v6, Lorg/koin/core/registry/ScopeRegistry;->rootScopeQualifier:Lorg/koin/core/qualifier/StringQualifier;

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    sget-object v10, Lorg/koin/core/definition/Kind;->Singleton:Lorg/koin/core/definition/Kind;

    .line 24
    .line 25
    move-object v1, v6

    .line 26
    move-object v5, v10

    .line 27
    invoke-direct/range {v0 .. v5}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 28
    .line 29
    .line 30
    new-instance p0, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 31
    .line 32
    invoke-direct {p0, v0}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, p0}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 36
    .line 37
    .line 38
    const-class v1, Lnet/thunderbird/core/ui/theme/api/ThemeManager;

    .line 39
    .line 40
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    iget-object v2, v0, Lorg/koin/core/definition/BeanDefinition;->secondaryTypes:Ljava/util/List;

    .line 45
    .line 46
    invoke-static {v2, v1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    iput-object v2, v0, Lorg/koin/core/definition/BeanDefinition;->secondaryTypes:Ljava/util/List;

    .line 51
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-static {v1}, Lorg/koin/ext/KClassExtKt;->getFullName(Lkotlin/reflect/KClass;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const/16 v1, 0x3a

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v2, ""

    .line 70
    .line 71
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    iget-object v1, p1, Lorg/koin/core/module/Module;->mappings:Ljava/util/LinkedHashMap;

    .line 85
    .line 86
    invoke-interface {v1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    new-instance v9, Lcom/fsck/k9/ui/base/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 90
    .line 91
    const/4 p0, 0x2

    .line 92
    invoke-direct {v9, p0}, Lcom/fsck/k9/ui/base/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 93
    .line 94
    .line 95
    new-instance v5, Lorg/koin/core/definition/BeanDefinition;

    .line 96
    .line 97
    const-class p0, Lnet/thunderbird/core/ui/animation/manager/AnimationManager;

    .line 98
    .line 99
    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 100
    .line 101
    .line 102
    move-result-object v7

    .line 103
    const/4 v8, 0x0

    .line 104
    invoke-direct/range {v5 .. v10}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 105
    .line 106
    .line 107
    new-instance p0, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 108
    .line 109
    invoke-direct {p0, v5}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1, p0}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 113
    .line 114
    .line 115
    new-instance v9, Lcom/fsck/k9/ui/base/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 116
    .line 117
    const/4 p0, 0x3

    .line 118
    invoke-direct {v9, p0}, Lcom/fsck/k9/ui/base/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 119
    .line 120
    .line 121
    new-instance v5, Lorg/koin/core/definition/BeanDefinition;

    .line 122
    .line 123
    const-class p0, Lcom/fsck/k9/ui/base/AppLanguageManager;

    .line 124
    .line 125
    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 126
    .line 127
    .line 128
    move-result-object v7

    .line 129
    invoke-direct/range {v5 .. v10}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 130
    .line 131
    .line 132
    new-instance p0, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 133
    .line 134
    invoke-direct {p0, v5}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1, p0}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 138
    .line 139
    .line 140
    new-instance v9, Lcom/fsck/k9/ui/base/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 141
    .line 142
    const/4 p0, 0x4

    .line 143
    invoke-direct {v9, p0}, Lcom/fsck/k9/ui/base/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 144
    .line 145
    .line 146
    new-instance v5, Lorg/koin/core/definition/BeanDefinition;

    .line 147
    .line 148
    const-class p0, Lcom/fsck/k9/ui/base/locale/SystemLocaleManager;

    .line 149
    .line 150
    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 151
    .line 152
    .line 153
    move-result-object v7

    .line 154
    invoke-direct/range {v5 .. v10}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 155
    .line 156
    .line 157
    invoke-static {v5, p1}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/koin/core/definition/BeanDefinition;Lorg/koin/core/module/Module;)V

    .line 158
    .line 159
    .line 160
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 161
    .line 162
    return-object p0
.end method

.method private final invoke$com$fsck$k9$ui$endtoend$KoinModuleKt$$ExternalSyntheticLambda0(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    check-cast p1, Lorg/koin/core/module/Module;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v4, Lcom/fsck/k9/ui/base/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 7
    .line 8
    const/4 p0, 0x7

    .line 9
    invoke-direct {v4, p0}, Lcom/fsck/k9/ui/base/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 10
    .line 11
    .line 12
    new-instance v0, Lorg/koin/core/definition/BeanDefinition;

    .line 13
    .line 14
    const-class p0, Lcom/fsck/k9/ui/endtoend/AutocryptSetupMessageLiveEvent;

    .line 15
    .line 16
    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    sget-object v6, Lorg/koin/core/registry/ScopeRegistry;->rootScopeQualifier:Lorg/koin/core/qualifier/StringQualifier;

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    sget-object v10, Lorg/koin/core/definition/Kind;->Factory:Lorg/koin/core/definition/Kind;

    .line 24
    .line 25
    move-object v1, v6

    .line 26
    move-object v5, v10

    .line 27
    invoke-direct/range {v0 .. v5}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 28
    .line 29
    .line 30
    new-instance p0, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 31
    .line 32
    invoke-direct {p0, v0}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, p0}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 36
    .line 37
    .line 38
    new-instance v9, Lcom/fsck/k9/ui/base/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 39
    .line 40
    const/16 p0, 0x8

    .line 41
    .line 42
    invoke-direct {v9, p0}, Lcom/fsck/k9/ui/base/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 43
    .line 44
    .line 45
    new-instance v5, Lorg/koin/core/definition/BeanDefinition;

    .line 46
    .line 47
    const-class p0, Lcom/fsck/k9/ui/endtoend/AutocryptSetupTransferLiveEvent;

    .line 48
    .line 49
    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    const/4 v8, 0x0

    .line 54
    invoke-direct/range {v5 .. v10}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 55
    .line 56
    .line 57
    new-instance p0, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 58
    .line 59
    invoke-direct {p0, v5}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, p0}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 63
    .line 64
    .line 65
    new-instance v9, Lcom/fsck/k9/ui/base/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 66
    .line 67
    const/16 p0, 0x9

    .line 68
    .line 69
    invoke-direct {v9, p0}, Lcom/fsck/k9/ui/base/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 70
    .line 71
    .line 72
    new-instance v5, Lorg/koin/core/definition/BeanDefinition;

    .line 73
    .line 74
    const-class p0, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferPresenter;

    .line 75
    .line 76
    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 77
    .line 78
    .line 79
    move-result-object v7

    .line 80
    invoke-direct/range {v5 .. v10}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 81
    .line 82
    .line 83
    new-instance p0, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 84
    .line 85
    invoke-direct {p0, v5}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, p0}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 89
    .line 90
    .line 91
    new-instance v9, Lcom/fsck/k9/ui/base/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 92
    .line 93
    const/16 p0, 0xa

    .line 94
    .line 95
    invoke-direct {v9, p0}, Lcom/fsck/k9/ui/base/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 96
    .line 97
    .line 98
    new-instance v5, Lorg/koin/core/definition/BeanDefinition;

    .line 99
    .line 100
    const-class p0, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferViewModel;

    .line 101
    .line 102
    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 103
    .line 104
    .line 105
    move-result-object v7

    .line 106
    invoke-direct/range {v5 .. v10}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 107
    .line 108
    .line 109
    invoke-static {v5, p1}, Lcoil3/size/ViewSizeResolver$-CC;->m$1(Lorg/koin/core/definition/BeanDefinition;Lorg/koin/core/module/Module;)V

    .line 110
    .line 111
    .line 112
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 113
    .line 114
    return-object p0
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 33

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/fsck/k9/ui/KoinModuleKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    const/16 v5, 0x9

    .line 6
    .line 7
    const/4 v6, 0x6

    .line 8
    const/16 v7, 0x8

    .line 9
    .line 10
    const/4 v8, 0x7

    .line 11
    const/4 v9, 0x5

    .line 12
    const/4 v10, 0x4

    .line 13
    const/4 v11, 0x3

    .line 14
    const/16 v12, 0x14

    .line 15
    .line 16
    const/16 v13, 0x13

    .line 17
    .line 18
    const/16 v14, 0x12

    .line 19
    .line 20
    const/4 v15, 0x2

    .line 21
    const/16 v2, 0x1c

    .line 22
    .line 23
    const/16 v3, 0x18

    .line 24
    .line 25
    const/16 v22, 0x0

    .line 26
    .line 27
    const/4 v4, 0x1

    .line 28
    sget-object v23, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 29
    .line 30
    packed-switch v1, :pswitch_data_0

    .line 31
    .line 32
    .line 33
    move-object/from16 v0, p1

    .line 34
    .line 35
    check-cast v0, Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-lez v0, :cond_0

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    move/from16 v4, v22

    .line 48
    .line 49
    :goto_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    return-object v0

    .line 54
    :pswitch_0
    invoke-direct/range {p0 .. p1}, Lcom/fsck/k9/ui/KoinModuleKt$$ExternalSyntheticLambda0;->invoke$com$fsck$k9$ui$endtoend$KoinModuleKt$$ExternalSyntheticLambda0(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    return-object v0

    .line 59
    :pswitch_1
    move-object/from16 v0, p1

    .line 60
    .line 61
    check-cast v0, Ljava/lang/String;

    .line 62
    .line 63
    sget v1, Lcom/fsck/k9/ui/choosefolder/ChooseFolderActivity;->$r8$clinit:I

    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-lez v0, :cond_1

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_1
    move/from16 v4, v22

    .line 76
    .line 77
    :goto_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    return-object v0

    .line 82
    :pswitch_2
    move-object/from16 v0, p1

    .line 83
    .line 84
    check-cast v0, Lapp/k9mail/legacy/ui/folder/DisplayFolder;

    .line 85
    .line 86
    sget v1, Lcom/fsck/k9/ui/choosefolder/ChooseFolderActivity;->$r8$clinit:I

    .line 87
    .line 88
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    iget-object v0, v0, Lapp/k9mail/legacy/ui/folder/DisplayFolder;->folder:Lnet/thunderbird/feature/mail/folder/api/Folder;

    .line 92
    .line 93
    iget-object v0, v0, Lnet/thunderbird/feature/mail/folder/api/Folder;->type:Lnet/thunderbird/feature/mail/folder/api/FolderType;

    .line 94
    .line 95
    sget-object v1, Lnet/thunderbird/feature/mail/folder/api/FolderType;->OUTBOX:Lnet/thunderbird/feature/mail/folder/api/FolderType;

    .line 96
    .line 97
    if-ne v0, v1, :cond_2

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_2
    move/from16 v4, v22

    .line 101
    .line 102
    :goto_2
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    return-object v0

    .line 107
    :pswitch_3
    invoke-direct/range {p0 .. p1}, Lcom/fsck/k9/ui/KoinModuleKt$$ExternalSyntheticLambda0;->invoke$com$fsck$k9$ui$base$KoinModuleKt$$ExternalSyntheticLambda0(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    return-object v0

    .line 112
    :pswitch_4
    move-object/from16 v0, p1

    .line 113
    .line 114
    check-cast v0, Ljava/lang/Long;

    .line 115
    .line 116
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 117
    .line 118
    .line 119
    move-result-wide v0

    .line 120
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    return-object v0

    .line 125
    :pswitch_5
    move-object/from16 v0, p1

    .line 126
    .line 127
    check-cast v0, Ljava/lang/String;

    .line 128
    .line 129
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    .line 131
    .line 132
    const-string v0, "?"

    .line 133
    .line 134
    return-object v0

    .line 135
    :pswitch_6
    invoke-direct/range {p0 .. p1}, Lcom/fsck/k9/ui/KoinModuleKt$$ExternalSyntheticLambda0;->invoke$com$fsck$k9$storage$migrations$MigrationTo84$$ExternalSyntheticLambda0(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    return-object v0

    .line 140
    :pswitch_7
    move-object/from16 v0, p1

    .line 141
    .line 142
    check-cast v0, Ljava/io/File;

    .line 143
    .line 144
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    return-object v0

    .line 153
    :pswitch_8
    move-object/from16 v0, p1

    .line 154
    .line 155
    check-cast v0, Ljava/lang/Integer;

    .line 156
    .line 157
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 158
    .line 159
    .line 160
    const-string v0, "?"

    .line 161
    .line 162
    return-object v0

    .line 163
    :pswitch_9
    move-object/from16 v0, p1

    .line 164
    .line 165
    check-cast v0, Lorg/koin/core/module/Module;

    .line 166
    .line 167
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 168
    .line 169
    .line 170
    new-instance v5, Lcom/fsck/k9/ui/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 171
    .line 172
    invoke-direct {v5, v14}, Lcom/fsck/k9/ui/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 173
    .line 174
    .line 175
    new-instance v1, Lorg/koin/core/definition/BeanDefinition;

    .line 176
    .line 177
    const-class v2, Lcom/fsck/k9/storage/K9SchemaDefinitionFactory;

    .line 178
    .line 179
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 180
    .line 181
    .line 182
    move-result-object v3

    .line 183
    sget-object v7, Lorg/koin/core/registry/ScopeRegistry;->rootScopeQualifier:Lorg/koin/core/qualifier/StringQualifier;

    .line 184
    .line 185
    const/4 v4, 0x0

    .line 186
    sget-object v11, Lorg/koin/core/definition/Kind;->Singleton:Lorg/koin/core/definition/Kind;

    .line 187
    .line 188
    move-object v2, v7

    .line 189
    move-object v6, v11

    .line 190
    invoke-direct/range {v1 .. v6}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 191
    .line 192
    .line 193
    new-instance v2, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 194
    .line 195
    invoke-direct {v2, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 199
    .line 200
    .line 201
    new-instance v10, Lcom/fsck/k9/ui/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 202
    .line 203
    invoke-direct {v10, v13}, Lcom/fsck/k9/ui/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 204
    .line 205
    .line 206
    new-instance v6, Lorg/koin/core/definition/BeanDefinition;

    .line 207
    .line 208
    const-class v1, Lcom/fsck/k9/storage/messages/K9MessageStoreFactory;

    .line 209
    .line 210
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 211
    .line 212
    .line 213
    move-result-object v8

    .line 214
    const/4 v9, 0x0

    .line 215
    invoke-direct/range {v6 .. v11}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 216
    .line 217
    .line 218
    new-instance v1, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 219
    .line 220
    invoke-direct {v1, v6}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v0, v1}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 224
    .line 225
    .line 226
    new-instance v10, Lcom/fsck/k9/ui/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 227
    .line 228
    invoke-direct {v10, v12}, Lcom/fsck/k9/ui/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 229
    .line 230
    .line 231
    new-instance v6, Lorg/koin/core/definition/BeanDefinition;

    .line 232
    .line 233
    const-class v1, Lcom/fsck/k9/storage/notifications/K9NotificationStoreProvider;

    .line 234
    .line 235
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 236
    .line 237
    .line 238
    move-result-object v8

    .line 239
    invoke-direct/range {v6 .. v11}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 240
    .line 241
    .line 242
    invoke-static {v6, v0}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/koin/core/definition/BeanDefinition;Lorg/koin/core/module/Module;)V

    .line 243
    .line 244
    .line 245
    return-object v23

    .line 246
    :pswitch_a
    move-object/from16 v0, p1

    .line 247
    .line 248
    check-cast v0, Lorg/koin/core/module/Module;

    .line 249
    .line 250
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 251
    .line 252
    .line 253
    new-instance v1, Lcom/fsck/k9/power/KoinModuleKt$$ExternalSyntheticLambda0;

    .line 254
    .line 255
    invoke-direct {v1, v3}, Lcom/fsck/k9/power/KoinModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 256
    .line 257
    .line 258
    new-instance v24, Lorg/koin/core/definition/BeanDefinition;

    .line 259
    .line 260
    const-class v3, Lcom/fsck/k9/preferences/SettingsExporter;

    .line 261
    .line 262
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 263
    .line 264
    .line 265
    move-result-object v26

    .line 266
    sget-object v28, Lorg/koin/core/registry/ScopeRegistry;->rootScopeQualifier:Lorg/koin/core/qualifier/StringQualifier;

    .line 267
    .line 268
    const/16 v27, 0x0

    .line 269
    .line 270
    sget-object v32, Lorg/koin/core/definition/Kind;->Factory:Lorg/koin/core/definition/Kind;

    .line 271
    .line 272
    move-object/from16 v25, v28

    .line 273
    .line 274
    move-object/from16 v29, v32

    .line 275
    .line 276
    move-object/from16 v28, v1

    .line 277
    .line 278
    invoke-direct/range {v24 .. v29}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 279
    .line 280
    .line 281
    move-object/from16 v1, v24

    .line 282
    .line 283
    move-object/from16 v28, v25

    .line 284
    .line 285
    new-instance v3, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 286
    .line 287
    invoke-direct {v3, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {v0, v3}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 291
    .line 292
    .line 293
    new-instance v1, Lcom/fsck/k9/power/KoinModuleKt$$ExternalSyntheticLambda0;

    .line 294
    .line 295
    const/16 v3, 0x10

    .line 296
    .line 297
    invoke-direct {v1, v3}, Lcom/fsck/k9/power/KoinModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 298
    .line 299
    .line 300
    new-instance v27, Lorg/koin/core/definition/BeanDefinition;

    .line 301
    .line 302
    const-class v3, Lcom/fsck/k9/preferences/FolderSettingsProvider;

    .line 303
    .line 304
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 305
    .line 306
    .line 307
    move-result-object v29

    .line 308
    const/16 v30, 0x0

    .line 309
    .line 310
    move-object/from16 v31, v1

    .line 311
    .line 312
    invoke-direct/range {v27 .. v32}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 313
    .line 314
    .line 315
    move-object/from16 v1, v27

    .line 316
    .line 317
    new-instance v3, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 318
    .line 319
    invoke-direct {v3, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 320
    .line 321
    .line 322
    invoke-virtual {v0, v3}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 323
    .line 324
    .line 325
    new-instance v1, Lcom/fsck/k9/power/KoinModuleKt$$ExternalSyntheticLambda0;

    .line 326
    .line 327
    invoke-direct {v1, v2}, Lcom/fsck/k9/power/KoinModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 328
    .line 329
    .line 330
    new-instance v27, Lorg/koin/core/definition/BeanDefinition;

    .line 331
    .line 332
    const-class v2, Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;

    .line 333
    .line 334
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 335
    .line 336
    .line 337
    move-result-object v29

    .line 338
    move-object/from16 v31, v1

    .line 339
    .line 340
    invoke-direct/range {v27 .. v32}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 341
    .line 342
    .line 343
    move-object/from16 v1, v27

    .line 344
    .line 345
    move-object/from16 v2, v32

    .line 346
    .line 347
    new-instance v3, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 348
    .line 349
    invoke-direct {v3, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {v0, v3}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 353
    .line 354
    .line 355
    new-instance v1, Lcom/fsck/k9/ui/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 356
    .line 357
    invoke-direct {v1, v4}, Lcom/fsck/k9/ui/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 358
    .line 359
    .line 360
    new-instance v27, Lorg/koin/core/definition/BeanDefinition;

    .line 361
    .line 362
    const-class v3, Lnet/thunderbird/core/preference/privacy/DefaultPrivacySettingsPreferenceManager;

    .line 363
    .line 364
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 365
    .line 366
    .line 367
    move-result-object v29

    .line 368
    sget-object v32, Lorg/koin/core/definition/Kind;->Singleton:Lorg/koin/core/definition/Kind;

    .line 369
    .line 370
    move-object/from16 v31, v1

    .line 371
    .line 372
    invoke-direct/range {v27 .. v32}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 373
    .line 374
    .line 375
    move-object/from16 v1, v27

    .line 376
    .line 377
    new-instance v3, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 378
    .line 379
    invoke-direct {v3, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 380
    .line 381
    .line 382
    invoke-virtual {v0, v3}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 383
    .line 384
    .line 385
    new-instance v1, Lcom/fsck/k9/ui/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 386
    .line 387
    invoke-direct {v1, v15}, Lcom/fsck/k9/ui/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 388
    .line 389
    .line 390
    new-instance v27, Lorg/koin/core/definition/BeanDefinition;

    .line 391
    .line 392
    const-class v3, Lnet/thunderbird/core/preference/notification/DefaultNotificationPreferenceManager;

    .line 393
    .line 394
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 395
    .line 396
    .line 397
    move-result-object v29

    .line 398
    move-object/from16 v31, v1

    .line 399
    .line 400
    invoke-direct/range {v27 .. v32}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 401
    .line 402
    .line 403
    move-object/from16 v1, v27

    .line 404
    .line 405
    new-instance v3, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 406
    .line 407
    invoke-direct {v3, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 408
    .line 409
    .line 410
    invoke-virtual {v0, v3}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 411
    .line 412
    .line 413
    new-instance v1, Lcom/fsck/k9/ui/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 414
    .line 415
    invoke-direct {v1, v11}, Lcom/fsck/k9/ui/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 416
    .line 417
    .line 418
    new-instance v27, Lorg/koin/core/definition/BeanDefinition;

    .line 419
    .line 420
    const-class v3, Lnet/thunderbird/core/preference/display/coreSettings/DefaultDisplayCoreSettingsPreferenceManager;

    .line 421
    .line 422
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 423
    .line 424
    .line 425
    move-result-object v29

    .line 426
    move-object/from16 v31, v1

    .line 427
    .line 428
    invoke-direct/range {v27 .. v32}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 429
    .line 430
    .line 431
    move-object/from16 v1, v27

    .line 432
    .line 433
    new-instance v3, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 434
    .line 435
    invoke-direct {v3, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 436
    .line 437
    .line 438
    invoke-virtual {v0, v3}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 439
    .line 440
    .line 441
    new-instance v1, Lcom/fsck/k9/ui/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 442
    .line 443
    invoke-direct {v1, v10}, Lcom/fsck/k9/ui/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 444
    .line 445
    .line 446
    new-instance v27, Lorg/koin/core/definition/BeanDefinition;

    .line 447
    .line 448
    const-class v3, Lnet/thunderbird/core/preference/display/inboxSettings/DefaultDisplayInboxSettingsPreferenceManager;

    .line 449
    .line 450
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 451
    .line 452
    .line 453
    move-result-object v29

    .line 454
    move-object/from16 v31, v1

    .line 455
    .line 456
    invoke-direct/range {v27 .. v32}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 457
    .line 458
    .line 459
    move-object/from16 v1, v27

    .line 460
    .line 461
    new-instance v3, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 462
    .line 463
    invoke-direct {v3, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 464
    .line 465
    .line 466
    invoke-virtual {v0, v3}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 467
    .line 468
    .line 469
    new-instance v1, Lcom/fsck/k9/ui/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 470
    .line 471
    invoke-direct {v1, v9}, Lcom/fsck/k9/ui/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 472
    .line 473
    .line 474
    new-instance v27, Lorg/koin/core/definition/BeanDefinition;

    .line 475
    .line 476
    const-class v3, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettingsPreferenceManager;

    .line 477
    .line 478
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 479
    .line 480
    .line 481
    move-result-object v29

    .line 482
    move-object/from16 v31, v1

    .line 483
    .line 484
    invoke-direct/range {v27 .. v32}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 485
    .line 486
    .line 487
    move-object/from16 v1, v27

    .line 488
    .line 489
    new-instance v3, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 490
    .line 491
    invoke-direct {v3, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 492
    .line 493
    .line 494
    invoke-virtual {v0, v3}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 495
    .line 496
    .line 497
    new-instance v1, Lcom/fsck/k9/ui/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 498
    .line 499
    invoke-direct {v1, v8}, Lcom/fsck/k9/ui/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 500
    .line 501
    .line 502
    new-instance v27, Lorg/koin/core/definition/BeanDefinition;

    .line 503
    .line 504
    const-class v3, Lnet/thunderbird/core/preference/display/miscSettings/DefaultDisplayMiscSettingsPreferenceManager;

    .line 505
    .line 506
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 507
    .line 508
    .line 509
    move-result-object v29

    .line 510
    move-object/from16 v31, v1

    .line 511
    .line 512
    invoke-direct/range {v27 .. v32}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 513
    .line 514
    .line 515
    move-object/from16 v1, v27

    .line 516
    .line 517
    new-instance v3, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 518
    .line 519
    invoke-direct {v3, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 520
    .line 521
    .line 522
    invoke-virtual {v0, v3}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 523
    .line 524
    .line 525
    new-instance v1, Lcom/fsck/k9/ui/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 526
    .line 527
    invoke-direct {v1, v7}, Lcom/fsck/k9/ui/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 528
    .line 529
    .line 530
    new-instance v27, Lorg/koin/core/definition/BeanDefinition;

    .line 531
    .line 532
    const-class v3, Lnet/thunderbird/core/preference/interaction/DefaultInteractionSettingsPreferenceManager;

    .line 533
    .line 534
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 535
    .line 536
    .line 537
    move-result-object v29

    .line 538
    move-object/from16 v31, v1

    .line 539
    .line 540
    invoke-direct/range {v27 .. v32}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 541
    .line 542
    .line 543
    move-object/from16 v1, v27

    .line 544
    .line 545
    new-instance v3, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 546
    .line 547
    invoke-direct {v3, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 548
    .line 549
    .line 550
    invoke-virtual {v0, v3}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 551
    .line 552
    .line 553
    new-instance v1, Lcom/fsck/k9/ui/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 554
    .line 555
    invoke-direct {v1, v6}, Lcom/fsck/k9/ui/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 556
    .line 557
    .line 558
    new-instance v27, Lorg/koin/core/definition/BeanDefinition;

    .line 559
    .line 560
    const-class v3, Lnet/thunderbird/core/preference/display/DefaultDisplaySettingsPreferenceManager;

    .line 561
    .line 562
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 563
    .line 564
    .line 565
    move-result-object v29

    .line 566
    move-object/from16 v31, v1

    .line 567
    .line 568
    invoke-direct/range {v27 .. v32}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 569
    .line 570
    .line 571
    move-object/from16 v1, v27

    .line 572
    .line 573
    new-instance v3, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 574
    .line 575
    invoke-direct {v3, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 576
    .line 577
    .line 578
    invoke-virtual {v0, v3}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 579
    .line 580
    .line 581
    new-instance v1, Lcom/fsck/k9/ui/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 582
    .line 583
    invoke-direct {v1, v5}, Lcom/fsck/k9/ui/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 584
    .line 585
    .line 586
    new-instance v27, Lorg/koin/core/definition/BeanDefinition;

    .line 587
    .line 588
    const-class v3, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DefaultMessageListPreferencesManager;

    .line 589
    .line 590
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 591
    .line 592
    .line 593
    move-result-object v29

    .line 594
    move-object/from16 v31, v1

    .line 595
    .line 596
    invoke-direct/range {v27 .. v32}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 597
    .line 598
    .line 599
    move-object/from16 v1, v27

    .line 600
    .line 601
    new-instance v3, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 602
    .line 603
    invoke-direct {v3, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 604
    .line 605
    .line 606
    invoke-virtual {v0, v3}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 607
    .line 608
    .line 609
    new-instance v1, Lcom/fsck/k9/ui/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 610
    .line 611
    const/16 v3, 0xa

    .line 612
    .line 613
    invoke-direct {v1, v3}, Lcom/fsck/k9/ui/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 614
    .line 615
    .line 616
    new-instance v27, Lorg/koin/core/definition/BeanDefinition;

    .line 617
    .line 618
    const-class v3, Lnet/thunderbird/core/preference/network/DefaultNetworkSettingsPreferenceManager;

    .line 619
    .line 620
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 621
    .line 622
    .line 623
    move-result-object v29

    .line 624
    move-object/from16 v31, v1

    .line 625
    .line 626
    invoke-direct/range {v27 .. v32}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 627
    .line 628
    .line 629
    move-object/from16 v1, v27

    .line 630
    .line 631
    new-instance v3, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 632
    .line 633
    invoke-direct {v3, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 634
    .line 635
    .line 636
    invoke-virtual {v0, v3}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 637
    .line 638
    .line 639
    new-instance v1, Lcom/fsck/k9/ui/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 640
    .line 641
    const/16 v3, 0xb

    .line 642
    .line 643
    invoke-direct {v1, v3}, Lcom/fsck/k9/ui/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 644
    .line 645
    .line 646
    new-instance v27, Lorg/koin/core/definition/BeanDefinition;

    .line 647
    .line 648
    const-class v3, Lnet/thunderbird/core/preference/debugging/DefaultDebuggingSettingsPreferenceManager;

    .line 649
    .line 650
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 651
    .line 652
    .line 653
    move-result-object v29

    .line 654
    move-object/from16 v31, v1

    .line 655
    .line 656
    invoke-direct/range {v27 .. v32}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 657
    .line 658
    .line 659
    move-object/from16 v1, v27

    .line 660
    .line 661
    new-instance v3, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 662
    .line 663
    invoke-direct {v3, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 664
    .line 665
    .line 666
    invoke-virtual {v0, v3}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 667
    .line 668
    .line 669
    new-instance v1, Lcom/fsck/k9/ui/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 670
    .line 671
    const/16 v3, 0xc

    .line 672
    .line 673
    invoke-direct {v1, v3}, Lcom/fsck/k9/ui/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 674
    .line 675
    .line 676
    new-instance v27, Lorg/koin/core/definition/BeanDefinition;

    .line 677
    .line 678
    const-class v3, Lnet/thunderbird/core/logging/config/PlatformInitializer;

    .line 679
    .line 680
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 681
    .line 682
    .line 683
    move-result-object v29

    .line 684
    move-object/from16 v31, v1

    .line 685
    .line 686
    invoke-direct/range {v27 .. v32}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 687
    .line 688
    .line 689
    move-object/from16 v1, v27

    .line 690
    .line 691
    new-instance v3, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 692
    .line 693
    invoke-direct {v3, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 694
    .line 695
    .line 696
    invoke-virtual {v0, v3}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 697
    .line 698
    .line 699
    new-instance v1, Lcom/fsck/k9/ui/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 700
    .line 701
    const/16 v3, 0xd

    .line 702
    .line 703
    invoke-direct {v1, v3}, Lcom/fsck/k9/ui/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 704
    .line 705
    .line 706
    new-instance v27, Lorg/koin/core/definition/BeanDefinition;

    .line 707
    .line 708
    const-class v3, Lnet/thunderbird/core/logging/config/DebugLogConfigurator;

    .line 709
    .line 710
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 711
    .line 712
    .line 713
    move-result-object v29

    .line 714
    move-object/from16 v31, v1

    .line 715
    .line 716
    invoke-direct/range {v27 .. v32}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 717
    .line 718
    .line 719
    move-object/from16 v1, v27

    .line 720
    .line 721
    new-instance v3, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 722
    .line 723
    invoke-direct {v3, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 724
    .line 725
    .line 726
    invoke-virtual {v0, v3}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 727
    .line 728
    .line 729
    new-instance v1, Lcom/fsck/k9/ui/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 730
    .line 731
    const/16 v3, 0xe

    .line 732
    .line 733
    invoke-direct {v1, v3}, Lcom/fsck/k9/ui/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 734
    .line 735
    .line 736
    new-instance v27, Lorg/koin/core/definition/BeanDefinition;

    .line 737
    .line 738
    const-class v3, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 739
    .line 740
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 741
    .line 742
    .line 743
    move-result-object v29

    .line 744
    move-object/from16 v31, v1

    .line 745
    .line 746
    invoke-direct/range {v27 .. v32}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 747
    .line 748
    .line 749
    move-object/from16 v1, v27

    .line 750
    .line 751
    move-object/from16 v3, v28

    .line 752
    .line 753
    new-instance v5, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 754
    .line 755
    invoke-direct {v5, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 756
    .line 757
    .line 758
    invoke-virtual {v0, v5}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 759
    .line 760
    .line 761
    const-class v6, Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 762
    .line 763
    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 764
    .line 765
    .line 766
    move-result-object v6

    .line 767
    iget-object v7, v1, Lorg/koin/core/definition/BeanDefinition;->secondaryTypes:Ljava/util/List;

    .line 768
    .line 769
    invoke-static {v7, v6}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 770
    .line 771
    .line 772
    move-result-object v7

    .line 773
    iput-object v7, v1, Lorg/koin/core/definition/BeanDefinition;->secondaryTypes:Ljava/util/List;

    .line 774
    .line 775
    new-instance v1, Ljava/lang/StringBuilder;

    .line 776
    .line 777
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 778
    .line 779
    .line 780
    invoke-static {v6}, Lorg/koin/ext/KClassExtKt;->getFullName(Lkotlin/reflect/KClass;)Ljava/lang/String;

    .line 781
    .line 782
    .line 783
    move-result-object v6

    .line 784
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 785
    .line 786
    .line 787
    const/16 v6, 0x3a

    .line 788
    .line 789
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 790
    .line 791
    .line 792
    const-string v7, ""

    .line 793
    .line 794
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 795
    .line 796
    .line 797
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 798
    .line 799
    .line 800
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 801
    .line 802
    .line 803
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 804
    .line 805
    .line 806
    move-result-object v1

    .line 807
    iget-object v8, v0, Lorg/koin/core/module/Module;->mappings:Ljava/util/LinkedHashMap;

    .line 808
    .line 809
    invoke-interface {v8, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 810
    .line 811
    .line 812
    new-instance v1, Lcom/fsck/k9/ui/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 813
    .line 814
    const/16 v5, 0xf

    .line 815
    .line 816
    invoke-direct {v1, v5}, Lcom/fsck/k9/ui/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 817
    .line 818
    .line 819
    new-instance v27, Lorg/koin/core/definition/BeanDefinition;

    .line 820
    .line 821
    const-class v5, Lcom/fsck/k9/preferences/DefaultDrawerConfigManager;

    .line 822
    .line 823
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 824
    .line 825
    .line 826
    move-result-object v29

    .line 827
    move-object/from16 v31, v1

    .line 828
    .line 829
    invoke-direct/range {v27 .. v32}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 830
    .line 831
    .line 832
    move-object/from16 v1, v27

    .line 833
    .line 834
    move-object/from16 v5, v32

    .line 835
    .line 836
    new-instance v9, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 837
    .line 838
    invoke-direct {v9, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 839
    .line 840
    .line 841
    invoke-virtual {v0, v9}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 842
    .line 843
    .line 844
    const-class v10, Lcom/fsck/k9/preferences/DrawerConfigManager;

    .line 845
    .line 846
    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 847
    .line 848
    .line 849
    move-result-object v10

    .line 850
    iget-object v11, v1, Lorg/koin/core/definition/BeanDefinition;->secondaryTypes:Ljava/util/List;

    .line 851
    .line 852
    invoke-static {v11, v10}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 853
    .line 854
    .line 855
    move-result-object v11

    .line 856
    iput-object v11, v1, Lorg/koin/core/definition/BeanDefinition;->secondaryTypes:Ljava/util/List;

    .line 857
    .line 858
    new-instance v1, Ljava/lang/StringBuilder;

    .line 859
    .line 860
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 861
    .line 862
    .line 863
    invoke-static {v10}, Lorg/koin/ext/KClassExtKt;->getFullName(Lkotlin/reflect/KClass;)Ljava/lang/String;

    .line 864
    .line 865
    .line 866
    move-result-object v10

    .line 867
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 868
    .line 869
    .line 870
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 871
    .line 872
    .line 873
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 874
    .line 875
    .line 876
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 877
    .line 878
    .line 879
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 880
    .line 881
    .line 882
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 883
    .line 884
    .line 885
    move-result-object v1

    .line 886
    invoke-interface {v8, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 887
    .line 888
    .line 889
    new-instance v1, Lcom/fsck/k9/power/KoinModuleKt$$ExternalSyntheticLambda0;

    .line 890
    .line 891
    const/16 v6, 0xe

    .line 892
    .line 893
    invoke-direct {v1, v6}, Lcom/fsck/k9/power/KoinModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 894
    .line 895
    .line 896
    new-instance v27, Lorg/koin/core/definition/BeanDefinition;

    .line 897
    .line 898
    const-class v6, Lcom/fsck/k9/preferences/SettingsFileParser;

    .line 899
    .line 900
    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 901
    .line 902
    .line 903
    move-result-object v29

    .line 904
    move-object/from16 v31, v1

    .line 905
    .line 906
    move-object/from16 v32, v2

    .line 907
    .line 908
    invoke-direct/range {v27 .. v32}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 909
    .line 910
    .line 911
    move-object/from16 v1, v27

    .line 912
    .line 913
    new-instance v2, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 914
    .line 915
    invoke-direct {v2, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 916
    .line 917
    .line 918
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 919
    .line 920
    .line 921
    new-instance v1, Lcom/fsck/k9/power/KoinModuleKt$$ExternalSyntheticLambda0;

    .line 922
    .line 923
    const/16 v2, 0xf

    .line 924
    .line 925
    invoke-direct {v1, v2}, Lcom/fsck/k9/power/KoinModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 926
    .line 927
    .line 928
    new-instance v27, Lorg/koin/core/definition/BeanDefinition;

    .line 929
    .line 930
    const-class v2, Lcom/fsck/k9/preferences/GeneralSettingsValidator;

    .line 931
    .line 932
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 933
    .line 934
    .line 935
    move-result-object v29

    .line 936
    move-object/from16 v31, v1

    .line 937
    .line 938
    invoke-direct/range {v27 .. v32}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 939
    .line 940
    .line 941
    move-object/from16 v1, v27

    .line 942
    .line 943
    new-instance v2, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 944
    .line 945
    invoke-direct {v2, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 946
    .line 947
    .line 948
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 949
    .line 950
    .line 951
    new-instance v1, Lcom/fsck/k9/power/KoinModuleKt$$ExternalSyntheticLambda0;

    .line 952
    .line 953
    const/16 v2, 0x11

    .line 954
    .line 955
    invoke-direct {v1, v2}, Lcom/fsck/k9/power/KoinModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 956
    .line 957
    .line 958
    new-instance v27, Lorg/koin/core/definition/BeanDefinition;

    .line 959
    .line 960
    const-class v2, Lcom/fsck/k9/preferences/GeneralSettingsUpgrader;

    .line 961
    .line 962
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 963
    .line 964
    .line 965
    move-result-object v29

    .line 966
    move-object/from16 v31, v1

    .line 967
    .line 968
    invoke-direct/range {v27 .. v32}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 969
    .line 970
    .line 971
    move-object/from16 v1, v27

    .line 972
    .line 973
    new-instance v2, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 974
    .line 975
    invoke-direct {v2, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 976
    .line 977
    .line 978
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 979
    .line 980
    .line 981
    new-instance v1, Lcom/fsck/k9/power/KoinModuleKt$$ExternalSyntheticLambda0;

    .line 982
    .line 983
    invoke-direct {v1, v14}, Lcom/fsck/k9/power/KoinModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 984
    .line 985
    .line 986
    new-instance v27, Lorg/koin/core/definition/BeanDefinition;

    .line 987
    .line 988
    const-class v2, Lcom/fsck/k9/preferences/GeneralSettingsWriter;

    .line 989
    .line 990
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 991
    .line 992
    .line 993
    move-result-object v29

    .line 994
    move-object/from16 v31, v1

    .line 995
    .line 996
    invoke-direct/range {v27 .. v32}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 997
    .line 998
    .line 999
    move-object/from16 v1, v27

    .line 1000
    .line 1001
    new-instance v2, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 1002
    .line 1003
    invoke-direct {v2, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 1004
    .line 1005
    .line 1006
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 1007
    .line 1008
    .line 1009
    new-instance v1, Lcom/fsck/k9/power/KoinModuleKt$$ExternalSyntheticLambda0;

    .line 1010
    .line 1011
    invoke-direct {v1, v13}, Lcom/fsck/k9/power/KoinModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 1012
    .line 1013
    .line 1014
    new-instance v27, Lorg/koin/core/definition/BeanDefinition;

    .line 1015
    .line 1016
    const-class v2, Lcom/fsck/k9/preferences/AccountSettingsValidator;

    .line 1017
    .line 1018
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1019
    .line 1020
    .line 1021
    move-result-object v29

    .line 1022
    move-object/from16 v31, v1

    .line 1023
    .line 1024
    invoke-direct/range {v27 .. v32}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 1025
    .line 1026
    .line 1027
    move-object/from16 v1, v27

    .line 1028
    .line 1029
    new-instance v2, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 1030
    .line 1031
    invoke-direct {v2, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 1032
    .line 1033
    .line 1034
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 1035
    .line 1036
    .line 1037
    new-instance v1, Lcom/fsck/k9/power/KoinModuleKt$$ExternalSyntheticLambda0;

    .line 1038
    .line 1039
    invoke-direct {v1, v12}, Lcom/fsck/k9/power/KoinModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 1040
    .line 1041
    .line 1042
    new-instance v27, Lorg/koin/core/definition/BeanDefinition;

    .line 1043
    .line 1044
    const-class v2, Lcom/fsck/k9/preferences/IdentitySettingsUpgrader;

    .line 1045
    .line 1046
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1047
    .line 1048
    .line 1049
    move-result-object v29

    .line 1050
    move-object/from16 v31, v1

    .line 1051
    .line 1052
    invoke-direct/range {v27 .. v32}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 1053
    .line 1054
    .line 1055
    move-object/from16 v1, v27

    .line 1056
    .line 1057
    new-instance v2, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 1058
    .line 1059
    invoke-direct {v2, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 1060
    .line 1061
    .line 1062
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 1063
    .line 1064
    .line 1065
    new-instance v1, Lcom/fsck/k9/power/KoinModuleKt$$ExternalSyntheticLambda0;

    .line 1066
    .line 1067
    const/16 v2, 0x15

    .line 1068
    .line 1069
    invoke-direct {v1, v2}, Lcom/fsck/k9/power/KoinModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 1070
    .line 1071
    .line 1072
    new-instance v27, Lorg/koin/core/definition/BeanDefinition;

    .line 1073
    .line 1074
    const-class v2, Lcom/fsck/k9/preferences/FolderSettingsUpgrader;

    .line 1075
    .line 1076
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1077
    .line 1078
    .line 1079
    move-result-object v29

    .line 1080
    move-object/from16 v31, v1

    .line 1081
    .line 1082
    invoke-direct/range {v27 .. v32}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 1083
    .line 1084
    .line 1085
    move-object/from16 v1, v27

    .line 1086
    .line 1087
    new-instance v2, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 1088
    .line 1089
    invoke-direct {v2, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 1090
    .line 1091
    .line 1092
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 1093
    .line 1094
    .line 1095
    new-instance v1, Lcom/fsck/k9/power/KoinModuleKt$$ExternalSyntheticLambda0;

    .line 1096
    .line 1097
    const/16 v2, 0x16

    .line 1098
    .line 1099
    invoke-direct {v1, v2}, Lcom/fsck/k9/power/KoinModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 1100
    .line 1101
    .line 1102
    new-instance v27, Lorg/koin/core/definition/BeanDefinition;

    .line 1103
    .line 1104
    const-class v2, Lcom/fsck/k9/preferences/ServerSettingsUpgrader;

    .line 1105
    .line 1106
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1107
    .line 1108
    .line 1109
    move-result-object v29

    .line 1110
    move-object/from16 v31, v1

    .line 1111
    .line 1112
    invoke-direct/range {v27 .. v32}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 1113
    .line 1114
    .line 1115
    move-object/from16 v1, v27

    .line 1116
    .line 1117
    new-instance v2, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 1118
    .line 1119
    invoke-direct {v2, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 1120
    .line 1121
    .line 1122
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 1123
    .line 1124
    .line 1125
    new-instance v1, Lcom/fsck/k9/power/KoinModuleKt$$ExternalSyntheticLambda0;

    .line 1126
    .line 1127
    const/16 v2, 0x17

    .line 1128
    .line 1129
    invoke-direct {v1, v2}, Lcom/fsck/k9/power/KoinModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 1130
    .line 1131
    .line 1132
    new-instance v27, Lorg/koin/core/definition/BeanDefinition;

    .line 1133
    .line 1134
    const-class v2, Lcom/fsck/k9/preferences/AccountSettingsUpgrader;

    .line 1135
    .line 1136
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1137
    .line 1138
    .line 1139
    move-result-object v29

    .line 1140
    move-object/from16 v31, v1

    .line 1141
    .line 1142
    invoke-direct/range {v27 .. v32}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 1143
    .line 1144
    .line 1145
    move-object/from16 v1, v27

    .line 1146
    .line 1147
    new-instance v2, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 1148
    .line 1149
    invoke-direct {v2, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 1150
    .line 1151
    .line 1152
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 1153
    .line 1154
    .line 1155
    new-instance v1, Lcom/fsck/k9/power/KoinModuleKt$$ExternalSyntheticLambda0;

    .line 1156
    .line 1157
    const/16 v2, 0x19

    .line 1158
    .line 1159
    invoke-direct {v1, v2}, Lcom/fsck/k9/power/KoinModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 1160
    .line 1161
    .line 1162
    new-instance v27, Lorg/koin/core/definition/BeanDefinition;

    .line 1163
    .line 1164
    const-class v2, Lcom/fsck/k9/preferences/AccountSettingsWriter;

    .line 1165
    .line 1166
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1167
    .line 1168
    .line 1169
    move-result-object v29

    .line 1170
    move-object/from16 v31, v1

    .line 1171
    .line 1172
    invoke-direct/range {v27 .. v32}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 1173
    .line 1174
    .line 1175
    move-object/from16 v1, v27

    .line 1176
    .line 1177
    new-instance v2, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 1178
    .line 1179
    invoke-direct {v2, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 1180
    .line 1181
    .line 1182
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 1183
    .line 1184
    .line 1185
    new-instance v1, Lcom/fsck/k9/power/KoinModuleKt$$ExternalSyntheticLambda0;

    .line 1186
    .line 1187
    const/16 v2, 0x1a

    .line 1188
    .line 1189
    invoke-direct {v1, v2}, Lcom/fsck/k9/power/KoinModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 1190
    .line 1191
    .line 1192
    new-instance v27, Lorg/koin/core/definition/BeanDefinition;

    .line 1193
    .line 1194
    const-class v2, Lcom/fsck/k9/preferences/UnifiedInboxConfigurator;

    .line 1195
    .line 1196
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1197
    .line 1198
    .line 1199
    move-result-object v29

    .line 1200
    move-object/from16 v31, v1

    .line 1201
    .line 1202
    invoke-direct/range {v27 .. v32}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 1203
    .line 1204
    .line 1205
    move-object/from16 v1, v27

    .line 1206
    .line 1207
    new-instance v2, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 1208
    .line 1209
    invoke-direct {v2, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 1210
    .line 1211
    .line 1212
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 1213
    .line 1214
    .line 1215
    new-instance v1, Lcom/fsck/k9/power/KoinModuleKt$$ExternalSyntheticLambda0;

    .line 1216
    .line 1217
    const/16 v2, 0x1b

    .line 1218
    .line 1219
    invoke-direct {v1, v2}, Lcom/fsck/k9/power/KoinModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 1220
    .line 1221
    .line 1222
    new-instance v27, Lorg/koin/core/definition/BeanDefinition;

    .line 1223
    .line 1224
    const-class v2, Lcom/fsck/k9/preferences/SettingsImporter;

    .line 1225
    .line 1226
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1227
    .line 1228
    .line 1229
    move-result-object v29

    .line 1230
    move-object/from16 v31, v1

    .line 1231
    .line 1232
    invoke-direct/range {v27 .. v32}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 1233
    .line 1234
    .line 1235
    move-object/from16 v1, v27

    .line 1236
    .line 1237
    new-instance v2, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 1238
    .line 1239
    invoke-direct {v2, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 1240
    .line 1241
    .line 1242
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 1243
    .line 1244
    .line 1245
    new-instance v1, Lcom/fsck/k9/power/KoinModuleKt$$ExternalSyntheticLambda0;

    .line 1246
    .line 1247
    const/16 v2, 0x1d

    .line 1248
    .line 1249
    invoke-direct {v1, v2}, Lcom/fsck/k9/power/KoinModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 1250
    .line 1251
    .line 1252
    new-instance v27, Lorg/koin/core/definition/BeanDefinition;

    .line 1253
    .line 1254
    const-class v2, Lnet/thunderbird/core/preference/DefaultPreferenceChangeBroker;

    .line 1255
    .line 1256
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1257
    .line 1258
    .line 1259
    move-result-object v29

    .line 1260
    move-object/from16 v31, v1

    .line 1261
    .line 1262
    move-object/from16 v32, v5

    .line 1263
    .line 1264
    invoke-direct/range {v27 .. v32}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 1265
    .line 1266
    .line 1267
    move-object/from16 v1, v27

    .line 1268
    .line 1269
    new-instance v2, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 1270
    .line 1271
    invoke-direct {v2, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 1272
    .line 1273
    .line 1274
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 1275
    .line 1276
    .line 1277
    new-instance v1, Lorg/koin/core/definition/KoinDefinition;

    .line 1278
    .line 1279
    invoke-direct {v1, v0, v2}, Lorg/koin/core/definition/KoinDefinition;-><init>(Lorg/koin/core/module/Module;Lorg/koin/core/instance/SingleInstanceFactory;)V

    .line 1280
    .line 1281
    .line 1282
    const-class v0, Lnet/thunderbird/core/preference/PreferenceChangePublisher;

    .line 1283
    .line 1284
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1285
    .line 1286
    .line 1287
    move-result-object v0

    .line 1288
    const-class v2, Lnet/thunderbird/core/preference/PreferenceChangeBroker;

    .line 1289
    .line 1290
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1291
    .line 1292
    .line 1293
    move-result-object v2

    .line 1294
    new-array v3, v15, [Lkotlin/reflect/KClass;

    .line 1295
    .line 1296
    aput-object v0, v3, v22

    .line 1297
    .line 1298
    aput-object v2, v3, v4

    .line 1299
    .line 1300
    invoke-static {v1, v3}, Lkotlin/io/ByteStreamsKt;->binds(Lorg/koin/core/definition/KoinDefinition;[Lkotlin/reflect/KClass;)V

    .line 1301
    .line 1302
    .line 1303
    return-object v23

    .line 1304
    :pswitch_b
    move-object/from16 v0, p1

    .line 1305
    .line 1306
    check-cast v0, Lcom/fsck/k9/notification/NotificationHolder;

    .line 1307
    .line 1308
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1309
    .line 1310
    .line 1311
    iget-object v0, v0, Lcom/fsck/k9/notification/NotificationHolder;->content:Lcom/fsck/k9/notification/NotificationContent;

    .line 1312
    .line 1313
    iget-object v0, v0, Lcom/fsck/k9/notification/NotificationContent;->summary:Ljava/lang/CharSequence;

    .line 1314
    .line 1315
    return-object v0

    .line 1316
    :pswitch_c
    move-object/from16 v0, p1

    .line 1317
    .line 1318
    check-cast v0, Lorg/koin/core/module/Module;

    .line 1319
    .line 1320
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1321
    .line 1322
    .line 1323
    new-instance v5, Lcom/fsck/k9/power/KoinModuleKt$$ExternalSyntheticLambda0;

    .line 1324
    .line 1325
    const/16 v3, 0xa

    .line 1326
    .line 1327
    invoke-direct {v5, v3}, Lcom/fsck/k9/power/KoinModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 1328
    .line 1329
    .line 1330
    new-instance v1, Lorg/koin/core/definition/BeanDefinition;

    .line 1331
    .line 1332
    const-class v2, Lcom/fsck/k9/notification/K9NotificationActionCreator;

    .line 1333
    .line 1334
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1335
    .line 1336
    .line 1337
    move-result-object v3

    .line 1338
    sget-object v7, Lorg/koin/core/registry/ScopeRegistry;->rootScopeQualifier:Lorg/koin/core/qualifier/StringQualifier;

    .line 1339
    .line 1340
    const/4 v4, 0x0

    .line 1341
    sget-object v11, Lorg/koin/core/definition/Kind;->Singleton:Lorg/koin/core/definition/Kind;

    .line 1342
    .line 1343
    move-object v2, v7

    .line 1344
    move-object v6, v11

    .line 1345
    invoke-direct/range {v1 .. v6}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 1346
    .line 1347
    .line 1348
    new-instance v2, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 1349
    .line 1350
    invoke-direct {v2, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 1351
    .line 1352
    .line 1353
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 1354
    .line 1355
    .line 1356
    new-instance v10, Lcom/fsck/k9/power/KoinModuleKt$$ExternalSyntheticLambda0;

    .line 1357
    .line 1358
    const/16 v1, 0xb

    .line 1359
    .line 1360
    invoke-direct {v10, v1}, Lcom/fsck/k9/power/KoinModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 1361
    .line 1362
    .line 1363
    new-instance v6, Lorg/koin/core/definition/BeanDefinition;

    .line 1364
    .line 1365
    const-class v1, Lcom/fsck/k9/notification/K9NotificationResourceProvider;

    .line 1366
    .line 1367
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1368
    .line 1369
    .line 1370
    move-result-object v8

    .line 1371
    const/4 v9, 0x0

    .line 1372
    invoke-direct/range {v6 .. v11}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 1373
    .line 1374
    .line 1375
    new-instance v1, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 1376
    .line 1377
    invoke-direct {v1, v6}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 1378
    .line 1379
    .line 1380
    invoke-virtual {v0, v1}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 1381
    .line 1382
    .line 1383
    new-instance v10, Lcom/fsck/k9/power/KoinModuleKt$$ExternalSyntheticLambda0;

    .line 1384
    .line 1385
    const/16 v1, 0xc

    .line 1386
    .line 1387
    invoke-direct {v10, v1}, Lcom/fsck/k9/power/KoinModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 1388
    .line 1389
    .line 1390
    new-instance v6, Lorg/koin/core/definition/BeanDefinition;

    .line 1391
    .line 1392
    const-class v1, Lcom/fsck/k9/notification/K9NotificationStrategy;

    .line 1393
    .line 1394
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1395
    .line 1396
    .line 1397
    move-result-object v8

    .line 1398
    invoke-direct/range {v6 .. v11}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 1399
    .line 1400
    .line 1401
    invoke-static {v6, v0}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/koin/core/definition/BeanDefinition;Lorg/koin/core/module/Module;)V

    .line 1402
    .line 1403
    .line 1404
    return-object v23

    .line 1405
    :pswitch_d
    move-object/from16 v0, p1

    .line 1406
    .line 1407
    check-cast v0, Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 1408
    .line 1409
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1410
    .line 1411
    .line 1412
    iget-wide v0, v0, Lapp/k9mail/legacy/message/controller/MessageReference;->folderId:J

    .line 1413
    .line 1414
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1415
    .line 1416
    .line 1417
    move-result-object v0

    .line 1418
    return-object v0

    .line 1419
    :pswitch_e
    move-object/from16 v0, p1

    .line 1420
    .line 1421
    check-cast v0, Lorg/koin/core/module/Module;

    .line 1422
    .line 1423
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1424
    .line 1425
    .line 1426
    new-instance v1, Lcom/fsck/k9/mailstore/KoinModuleKt$$ExternalSyntheticLambda2;

    .line 1427
    .line 1428
    const/16 v12, 0x19

    .line 1429
    .line 1430
    invoke-direct {v1, v12}, Lcom/fsck/k9/mailstore/KoinModuleKt$$ExternalSyntheticLambda2;-><init>(I)V

    .line 1431
    .line 1432
    .line 1433
    new-instance v24, Lorg/koin/core/definition/BeanDefinition;

    .line 1434
    .line 1435
    const-class v12, Lcom/fsck/k9/notification/NotificationController;

    .line 1436
    .line 1437
    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1438
    .line 1439
    .line 1440
    move-result-object v26

    .line 1441
    sget-object v28, Lorg/koin/core/registry/ScopeRegistry;->rootScopeQualifier:Lorg/koin/core/qualifier/StringQualifier;

    .line 1442
    .line 1443
    const/16 v27, 0x0

    .line 1444
    .line 1445
    sget-object v32, Lorg/koin/core/definition/Kind;->Singleton:Lorg/koin/core/definition/Kind;

    .line 1446
    .line 1447
    move-object/from16 v25, v28

    .line 1448
    .line 1449
    move-object/from16 v29, v32

    .line 1450
    .line 1451
    move-object/from16 v28, v1

    .line 1452
    .line 1453
    invoke-direct/range {v24 .. v29}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 1454
    .line 1455
    .line 1456
    move-object/from16 v1, v24

    .line 1457
    .line 1458
    move-object/from16 v28, v25

    .line 1459
    .line 1460
    new-instance v12, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 1461
    .line 1462
    invoke-direct {v12, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 1463
    .line 1464
    .line 1465
    invoke-virtual {v0, v12}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 1466
    .line 1467
    .line 1468
    new-instance v1, Lcom/fsck/k9/mailstore/KoinModuleKt$$ExternalSyntheticLambda2;

    .line 1469
    .line 1470
    const/16 v12, 0x11

    .line 1471
    .line 1472
    invoke-direct {v1, v12}, Lcom/fsck/k9/mailstore/KoinModuleKt$$ExternalSyntheticLambda2;-><init>(I)V

    .line 1473
    .line 1474
    .line 1475
    new-instance v27, Lorg/koin/core/definition/BeanDefinition;

    .line 1476
    .line 1477
    const-class v12, Landroidx/core/app/NotificationManagerCompat;

    .line 1478
    .line 1479
    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1480
    .line 1481
    .line 1482
    move-result-object v29

    .line 1483
    const/16 v30, 0x0

    .line 1484
    .line 1485
    move-object/from16 v31, v1

    .line 1486
    .line 1487
    invoke-direct/range {v27 .. v32}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 1488
    .line 1489
    .line 1490
    move-object/from16 v1, v27

    .line 1491
    .line 1492
    new-instance v12, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 1493
    .line 1494
    invoke-direct {v12, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 1495
    .line 1496
    .line 1497
    invoke-virtual {v0, v12}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 1498
    .line 1499
    .line 1500
    new-instance v1, Lcom/fsck/k9/mailstore/KoinModuleKt$$ExternalSyntheticLambda2;

    .line 1501
    .line 1502
    const/16 v12, 0x16

    .line 1503
    .line 1504
    invoke-direct {v1, v12}, Lcom/fsck/k9/mailstore/KoinModuleKt$$ExternalSyntheticLambda2;-><init>(I)V

    .line 1505
    .line 1506
    .line 1507
    new-instance v27, Lorg/koin/core/definition/BeanDefinition;

    .line 1508
    .line 1509
    const-class v12, Lcom/fsck/k9/notification/NotificationHelper;

    .line 1510
    .line 1511
    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1512
    .line 1513
    .line 1514
    move-result-object v29

    .line 1515
    move-object/from16 v31, v1

    .line 1516
    .line 1517
    invoke-direct/range {v27 .. v32}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 1518
    .line 1519
    .line 1520
    move-object/from16 v1, v27

    .line 1521
    .line 1522
    new-instance v12, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 1523
    .line 1524
    invoke-direct {v12, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 1525
    .line 1526
    .line 1527
    invoke-virtual {v0, v12}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 1528
    .line 1529
    .line 1530
    new-instance v1, Lcom/fsck/k9/mailstore/KoinModuleKt$$ExternalSyntheticLambda2;

    .line 1531
    .line 1532
    const/16 v12, 0x17

    .line 1533
    .line 1534
    invoke-direct {v1, v12}, Lcom/fsck/k9/mailstore/KoinModuleKt$$ExternalSyntheticLambda2;-><init>(I)V

    .line 1535
    .line 1536
    .line 1537
    new-instance v27, Lorg/koin/core/definition/BeanDefinition;

    .line 1538
    .line 1539
    const-class v12, Lcom/fsck/k9/notification/NotificationChannelManager;

    .line 1540
    .line 1541
    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1542
    .line 1543
    .line 1544
    move-result-object v29

    .line 1545
    move-object/from16 v31, v1

    .line 1546
    .line 1547
    invoke-direct/range {v27 .. v32}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 1548
    .line 1549
    .line 1550
    move-object/from16 v1, v27

    .line 1551
    .line 1552
    new-instance v12, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 1553
    .line 1554
    invoke-direct {v12, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 1555
    .line 1556
    .line 1557
    invoke-virtual {v0, v12}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 1558
    .line 1559
    .line 1560
    new-instance v1, Lcom/fsck/k9/mailstore/KoinModuleKt$$ExternalSyntheticLambda2;

    .line 1561
    .line 1562
    invoke-direct {v1, v3}, Lcom/fsck/k9/mailstore/KoinModuleKt$$ExternalSyntheticLambda2;-><init>(I)V

    .line 1563
    .line 1564
    .line 1565
    new-instance v27, Lorg/koin/core/definition/BeanDefinition;

    .line 1566
    .line 1567
    const-class v3, Lcom/fsck/k9/notification/CertificateErrorNotificationController;

    .line 1568
    .line 1569
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1570
    .line 1571
    .line 1572
    move-result-object v29

    .line 1573
    move-object/from16 v31, v1

    .line 1574
    .line 1575
    invoke-direct/range {v27 .. v32}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 1576
    .line 1577
    .line 1578
    move-object/from16 v1, v27

    .line 1579
    .line 1580
    new-instance v3, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 1581
    .line 1582
    invoke-direct {v3, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 1583
    .line 1584
    .line 1585
    invoke-virtual {v0, v3}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 1586
    .line 1587
    .line 1588
    new-instance v1, Lcom/fsck/k9/mailstore/KoinModuleKt$$ExternalSyntheticLambda2;

    .line 1589
    .line 1590
    const/16 v3, 0x1a

    .line 1591
    .line 1592
    invoke-direct {v1, v3}, Lcom/fsck/k9/mailstore/KoinModuleKt$$ExternalSyntheticLambda2;-><init>(I)V

    .line 1593
    .line 1594
    .line 1595
    new-instance v27, Lorg/koin/core/definition/BeanDefinition;

    .line 1596
    .line 1597
    const-class v3, Lcom/fsck/k9/notification/AuthenticationErrorNotificationController;

    .line 1598
    .line 1599
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1600
    .line 1601
    .line 1602
    move-result-object v29

    .line 1603
    move-object/from16 v31, v1

    .line 1604
    .line 1605
    invoke-direct/range {v27 .. v32}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 1606
    .line 1607
    .line 1608
    move-object/from16 v1, v27

    .line 1609
    .line 1610
    new-instance v3, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 1611
    .line 1612
    invoke-direct {v3, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 1613
    .line 1614
    .line 1615
    invoke-virtual {v0, v3}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 1616
    .line 1617
    .line 1618
    new-instance v1, Lcom/fsck/k9/mailstore/KoinModuleKt$$ExternalSyntheticLambda2;

    .line 1619
    .line 1620
    const/16 v3, 0x1b

    .line 1621
    .line 1622
    invoke-direct {v1, v3}, Lcom/fsck/k9/mailstore/KoinModuleKt$$ExternalSyntheticLambda2;-><init>(I)V

    .line 1623
    .line 1624
    .line 1625
    new-instance v27, Lorg/koin/core/definition/BeanDefinition;

    .line 1626
    .line 1627
    const-class v3, Lcom/fsck/k9/notification/SyncNotificationController;

    .line 1628
    .line 1629
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1630
    .line 1631
    .line 1632
    move-result-object v29

    .line 1633
    move-object/from16 v31, v1

    .line 1634
    .line 1635
    invoke-direct/range {v27 .. v32}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 1636
    .line 1637
    .line 1638
    move-object/from16 v1, v27

    .line 1639
    .line 1640
    new-instance v3, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 1641
    .line 1642
    invoke-direct {v3, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 1643
    .line 1644
    .line 1645
    invoke-virtual {v0, v3}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 1646
    .line 1647
    .line 1648
    new-instance v1, Lcom/fsck/k9/mailstore/KoinModuleKt$$ExternalSyntheticLambda2;

    .line 1649
    .line 1650
    invoke-direct {v1, v2}, Lcom/fsck/k9/mailstore/KoinModuleKt$$ExternalSyntheticLambda2;-><init>(I)V

    .line 1651
    .line 1652
    .line 1653
    new-instance v27, Lorg/koin/core/definition/BeanDefinition;

    .line 1654
    .line 1655
    const-class v2, Lcom/fsck/k9/notification/SendFailedNotificationController;

    .line 1656
    .line 1657
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1658
    .line 1659
    .line 1660
    move-result-object v29

    .line 1661
    move-object/from16 v31, v1

    .line 1662
    .line 1663
    invoke-direct/range {v27 .. v32}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 1664
    .line 1665
    .line 1666
    move-object/from16 v1, v27

    .line 1667
    .line 1668
    new-instance v2, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 1669
    .line 1670
    invoke-direct {v2, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 1671
    .line 1672
    .line 1673
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 1674
    .line 1675
    .line 1676
    new-instance v1, Lcom/fsck/k9/mailstore/KoinModuleKt$$ExternalSyntheticLambda2;

    .line 1677
    .line 1678
    const/16 v2, 0x1d

    .line 1679
    .line 1680
    invoke-direct {v1, v2}, Lcom/fsck/k9/mailstore/KoinModuleKt$$ExternalSyntheticLambda2;-><init>(I)V

    .line 1681
    .line 1682
    .line 1683
    new-instance v27, Lorg/koin/core/definition/BeanDefinition;

    .line 1684
    .line 1685
    const-class v2, Lcom/fsck/k9/notification/NewMailNotificationController;

    .line 1686
    .line 1687
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1688
    .line 1689
    .line 1690
    move-result-object v29

    .line 1691
    move-object/from16 v31, v1

    .line 1692
    .line 1693
    invoke-direct/range {v27 .. v32}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 1694
    .line 1695
    .line 1696
    move-object/from16 v1, v27

    .line 1697
    .line 1698
    new-instance v2, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 1699
    .line 1700
    invoke-direct {v2, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 1701
    .line 1702
    .line 1703
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 1704
    .line 1705
    .line 1706
    new-instance v1, Lcom/fsck/k9/power/KoinModuleKt$$ExternalSyntheticLambda0;

    .line 1707
    .line 1708
    invoke-direct {v1, v4}, Lcom/fsck/k9/power/KoinModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 1709
    .line 1710
    .line 1711
    new-instance v27, Lorg/koin/core/definition/BeanDefinition;

    .line 1712
    .line 1713
    const-class v2, Lcom/fsck/k9/notification/NewMailNotificationManager;

    .line 1714
    .line 1715
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1716
    .line 1717
    .line 1718
    move-result-object v29

    .line 1719
    move-object/from16 v31, v1

    .line 1720
    .line 1721
    invoke-direct/range {v27 .. v32}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 1722
    .line 1723
    .line 1724
    move-object/from16 v1, v27

    .line 1725
    .line 1726
    move-object/from16 v2, v32

    .line 1727
    .line 1728
    new-instance v3, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 1729
    .line 1730
    invoke-direct {v3, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 1731
    .line 1732
    .line 1733
    invoke-virtual {v0, v3}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 1734
    .line 1735
    .line 1736
    new-instance v1, Lcom/fsck/k9/power/KoinModuleKt$$ExternalSyntheticLambda0;

    .line 1737
    .line 1738
    invoke-direct {v1, v15}, Lcom/fsck/k9/power/KoinModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 1739
    .line 1740
    .line 1741
    new-instance v27, Lorg/koin/core/definition/BeanDefinition;

    .line 1742
    .line 1743
    const-class v3, Lcom/fsck/k9/notification/NotificationContentCreator;

    .line 1744
    .line 1745
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1746
    .line 1747
    .line 1748
    move-result-object v29

    .line 1749
    sget-object v32, Lorg/koin/core/definition/Kind;->Factory:Lorg/koin/core/definition/Kind;

    .line 1750
    .line 1751
    move-object/from16 v31, v1

    .line 1752
    .line 1753
    invoke-direct/range {v27 .. v32}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 1754
    .line 1755
    .line 1756
    move-object/from16 v1, v27

    .line 1757
    .line 1758
    new-instance v3, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 1759
    .line 1760
    invoke-direct {v3, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 1761
    .line 1762
    .line 1763
    invoke-virtual {v0, v3}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 1764
    .line 1765
    .line 1766
    new-instance v1, Lcom/fsck/k9/power/KoinModuleKt$$ExternalSyntheticLambda0;

    .line 1767
    .line 1768
    invoke-direct {v1, v11}, Lcom/fsck/k9/power/KoinModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 1769
    .line 1770
    .line 1771
    new-instance v27, Lorg/koin/core/definition/BeanDefinition;

    .line 1772
    .line 1773
    const-class v3, Lcom/fsck/k9/notification/BaseNotificationDataCreator;

    .line 1774
    .line 1775
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1776
    .line 1777
    .line 1778
    move-result-object v29

    .line 1779
    move-object/from16 v31, v1

    .line 1780
    .line 1781
    invoke-direct/range {v27 .. v32}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 1782
    .line 1783
    .line 1784
    move-object/from16 v1, v27

    .line 1785
    .line 1786
    new-instance v3, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 1787
    .line 1788
    invoke-direct {v3, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 1789
    .line 1790
    .line 1791
    invoke-virtual {v0, v3}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 1792
    .line 1793
    .line 1794
    new-instance v1, Lcom/fsck/k9/power/KoinModuleKt$$ExternalSyntheticLambda0;

    .line 1795
    .line 1796
    invoke-direct {v1, v10}, Lcom/fsck/k9/power/KoinModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 1797
    .line 1798
    .line 1799
    new-instance v27, Lorg/koin/core/definition/BeanDefinition;

    .line 1800
    .line 1801
    const-class v3, Lcom/fsck/k9/notification/SingleMessageNotificationDataCreator;

    .line 1802
    .line 1803
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1804
    .line 1805
    .line 1806
    move-result-object v29

    .line 1807
    move-object/from16 v31, v1

    .line 1808
    .line 1809
    invoke-direct/range {v27 .. v32}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 1810
    .line 1811
    .line 1812
    move-object/from16 v1, v27

    .line 1813
    .line 1814
    new-instance v3, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 1815
    .line 1816
    invoke-direct {v3, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 1817
    .line 1818
    .line 1819
    invoke-virtual {v0, v3}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 1820
    .line 1821
    .line 1822
    new-instance v1, Lcom/fsck/k9/power/KoinModuleKt$$ExternalSyntheticLambda0;

    .line 1823
    .line 1824
    invoke-direct {v1, v9}, Lcom/fsck/k9/power/KoinModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 1825
    .line 1826
    .line 1827
    new-instance v27, Lorg/koin/core/definition/BeanDefinition;

    .line 1828
    .line 1829
    const-class v3, Lcom/fsck/k9/notification/SummaryNotificationDataCreator;

    .line 1830
    .line 1831
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1832
    .line 1833
    .line 1834
    move-result-object v29

    .line 1835
    move-object/from16 v31, v1

    .line 1836
    .line 1837
    invoke-direct/range {v27 .. v32}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 1838
    .line 1839
    .line 1840
    move-object/from16 v1, v27

    .line 1841
    .line 1842
    new-instance v3, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 1843
    .line 1844
    invoke-direct {v3, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 1845
    .line 1846
    .line 1847
    invoke-virtual {v0, v3}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 1848
    .line 1849
    .line 1850
    new-instance v1, Lcom/fsck/k9/power/KoinModuleKt$$ExternalSyntheticLambda0;

    .line 1851
    .line 1852
    invoke-direct {v1, v6}, Lcom/fsck/k9/power/KoinModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 1853
    .line 1854
    .line 1855
    new-instance v27, Lorg/koin/core/definition/BeanDefinition;

    .line 1856
    .line 1857
    const-class v3, Lcom/fsck/k9/notification/SingleMessageNotificationCreator;

    .line 1858
    .line 1859
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1860
    .line 1861
    .line 1862
    move-result-object v29

    .line 1863
    move-object/from16 v31, v1

    .line 1864
    .line 1865
    invoke-direct/range {v27 .. v32}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 1866
    .line 1867
    .line 1868
    move-object/from16 v1, v27

    .line 1869
    .line 1870
    new-instance v3, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 1871
    .line 1872
    invoke-direct {v3, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 1873
    .line 1874
    .line 1875
    invoke-virtual {v0, v3}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 1876
    .line 1877
    .line 1878
    new-instance v1, Lcom/fsck/k9/power/KoinModuleKt$$ExternalSyntheticLambda0;

    .line 1879
    .line 1880
    invoke-direct {v1, v8}, Lcom/fsck/k9/power/KoinModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 1881
    .line 1882
    .line 1883
    new-instance v27, Lorg/koin/core/definition/BeanDefinition;

    .line 1884
    .line 1885
    const-class v3, Lcom/fsck/k9/notification/SummaryNotificationCreator;

    .line 1886
    .line 1887
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1888
    .line 1889
    .line 1890
    move-result-object v29

    .line 1891
    move-object/from16 v31, v1

    .line 1892
    .line 1893
    invoke-direct/range {v27 .. v32}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 1894
    .line 1895
    .line 1896
    move-object/from16 v1, v27

    .line 1897
    .line 1898
    new-instance v3, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 1899
    .line 1900
    invoke-direct {v3, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 1901
    .line 1902
    .line 1903
    invoke-virtual {v0, v3}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 1904
    .line 1905
    .line 1906
    new-instance v1, Lcom/fsck/k9/power/KoinModuleKt$$ExternalSyntheticLambda0;

    .line 1907
    .line 1908
    invoke-direct {v1, v7}, Lcom/fsck/k9/power/KoinModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 1909
    .line 1910
    .line 1911
    new-instance v27, Lorg/koin/core/definition/BeanDefinition;

    .line 1912
    .line 1913
    const-class v3, Lcom/fsck/k9/notification/LockScreenNotificationCreator;

    .line 1914
    .line 1915
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1916
    .line 1917
    .line 1918
    move-result-object v29

    .line 1919
    move-object/from16 v31, v1

    .line 1920
    .line 1921
    invoke-direct/range {v27 .. v32}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 1922
    .line 1923
    .line 1924
    move-object/from16 v1, v27

    .line 1925
    .line 1926
    move-object/from16 v3, v32

    .line 1927
    .line 1928
    new-instance v4, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 1929
    .line 1930
    invoke-direct {v4, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 1931
    .line 1932
    .line 1933
    invoke-virtual {v0, v4}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 1934
    .line 1935
    .line 1936
    new-instance v1, Lcom/fsck/k9/power/KoinModuleKt$$ExternalSyntheticLambda0;

    .line 1937
    .line 1938
    invoke-direct {v1, v5}, Lcom/fsck/k9/power/KoinModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 1939
    .line 1940
    .line 1941
    new-instance v27, Lorg/koin/core/definition/BeanDefinition;

    .line 1942
    .line 1943
    const-class v4, Lcom/fsck/k9/notification/PushNotificationManager;

    .line 1944
    .line 1945
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1946
    .line 1947
    .line 1948
    move-result-object v29

    .line 1949
    move-object/from16 v31, v1

    .line 1950
    .line 1951
    move-object/from16 v32, v2

    .line 1952
    .line 1953
    invoke-direct/range {v27 .. v32}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 1954
    .line 1955
    .line 1956
    move-object/from16 v1, v27

    .line 1957
    .line 1958
    new-instance v2, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 1959
    .line 1960
    invoke-direct {v2, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 1961
    .line 1962
    .line 1963
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 1964
    .line 1965
    .line 1966
    new-instance v1, Lcom/fsck/k9/mailstore/KoinModuleKt$$ExternalSyntheticLambda2;

    .line 1967
    .line 1968
    const/16 v2, 0xf

    .line 1969
    .line 1970
    invoke-direct {v1, v2}, Lcom/fsck/k9/mailstore/KoinModuleKt$$ExternalSyntheticLambda2;-><init>(I)V

    .line 1971
    .line 1972
    .line 1973
    new-instance v27, Lorg/koin/core/definition/BeanDefinition;

    .line 1974
    .line 1975
    const-class v2, Lcom/fsck/k9/notification/NotificationRepository;

    .line 1976
    .line 1977
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1978
    .line 1979
    .line 1980
    move-result-object v29

    .line 1981
    move-object/from16 v31, v1

    .line 1982
    .line 1983
    invoke-direct/range {v27 .. v32}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 1984
    .line 1985
    .line 1986
    move-object/from16 v1, v27

    .line 1987
    .line 1988
    new-instance v2, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 1989
    .line 1990
    invoke-direct {v2, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 1991
    .line 1992
    .line 1993
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 1994
    .line 1995
    .line 1996
    new-instance v1, Lcom/fsck/k9/mailstore/KoinModuleKt$$ExternalSyntheticLambda2;

    .line 1997
    .line 1998
    const/16 v2, 0x10

    .line 1999
    .line 2000
    invoke-direct {v1, v2}, Lcom/fsck/k9/mailstore/KoinModuleKt$$ExternalSyntheticLambda2;-><init>(I)V

    .line 2001
    .line 2002
    .line 2003
    new-instance v27, Lorg/koin/core/definition/BeanDefinition;

    .line 2004
    .line 2005
    const-class v2, Lcom/fsck/k9/notification/NotificationLightDecoder;

    .line 2006
    .line 2007
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2008
    .line 2009
    .line 2010
    move-result-object v29

    .line 2011
    move-object/from16 v31, v1

    .line 2012
    .line 2013
    move-object/from16 v32, v3

    .line 2014
    .line 2015
    invoke-direct/range {v27 .. v32}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 2016
    .line 2017
    .line 2018
    move-object/from16 v1, v27

    .line 2019
    .line 2020
    new-instance v2, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 2021
    .line 2022
    invoke-direct {v2, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 2023
    .line 2024
    .line 2025
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 2026
    .line 2027
    .line 2028
    new-instance v1, Lcom/fsck/k9/mailstore/KoinModuleKt$$ExternalSyntheticLambda2;

    .line 2029
    .line 2030
    invoke-direct {v1, v14}, Lcom/fsck/k9/mailstore/KoinModuleKt$$ExternalSyntheticLambda2;-><init>(I)V

    .line 2031
    .line 2032
    .line 2033
    new-instance v27, Lorg/koin/core/definition/BeanDefinition;

    .line 2034
    .line 2035
    const-class v2, Lcom/fsck/k9/notification/NotificationVibrationDecoder;

    .line 2036
    .line 2037
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2038
    .line 2039
    .line 2040
    move-result-object v29

    .line 2041
    move-object/from16 v31, v1

    .line 2042
    .line 2043
    invoke-direct/range {v27 .. v32}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 2044
    .line 2045
    .line 2046
    move-object/from16 v1, v27

    .line 2047
    .line 2048
    new-instance v2, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 2049
    .line 2050
    invoke-direct {v2, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 2051
    .line 2052
    .line 2053
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 2054
    .line 2055
    .line 2056
    new-instance v1, Lcom/fsck/k9/mailstore/KoinModuleKt$$ExternalSyntheticLambda2;

    .line 2057
    .line 2058
    invoke-direct {v1, v13}, Lcom/fsck/k9/mailstore/KoinModuleKt$$ExternalSyntheticLambda2;-><init>(I)V

    .line 2059
    .line 2060
    .line 2061
    new-instance v27, Lorg/koin/core/definition/BeanDefinition;

    .line 2062
    .line 2063
    const-class v2, Lcom/fsck/k9/notification/NotificationConfigurationConverter;

    .line 2064
    .line 2065
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2066
    .line 2067
    .line 2068
    move-result-object v29

    .line 2069
    move-object/from16 v31, v1

    .line 2070
    .line 2071
    invoke-direct/range {v27 .. v32}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 2072
    .line 2073
    .line 2074
    move-object/from16 v1, v27

    .line 2075
    .line 2076
    new-instance v2, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 2077
    .line 2078
    invoke-direct {v2, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 2079
    .line 2080
    .line 2081
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 2082
    .line 2083
    .line 2084
    new-instance v1, Lcom/fsck/k9/mailstore/KoinModuleKt$$ExternalSyntheticLambda2;

    .line 2085
    .line 2086
    const/16 v2, 0x14

    .line 2087
    .line 2088
    invoke-direct {v1, v2}, Lcom/fsck/k9/mailstore/KoinModuleKt$$ExternalSyntheticLambda2;-><init>(I)V

    .line 2089
    .line 2090
    .line 2091
    new-instance v27, Lorg/koin/core/definition/BeanDefinition;

    .line 2092
    .line 2093
    const-class v2, Lcom/fsck/k9/notification/NotificationSettingsUpdater;

    .line 2094
    .line 2095
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2096
    .line 2097
    .line 2098
    move-result-object v29

    .line 2099
    move-object/from16 v31, v1

    .line 2100
    .line 2101
    invoke-direct/range {v27 .. v32}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 2102
    .line 2103
    .line 2104
    move-object/from16 v1, v27

    .line 2105
    .line 2106
    new-instance v2, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 2107
    .line 2108
    invoke-direct {v2, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 2109
    .line 2110
    .line 2111
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 2112
    .line 2113
    .line 2114
    new-instance v1, Lcom/fsck/k9/mailstore/KoinModuleKt$$ExternalSyntheticLambda2;

    .line 2115
    .line 2116
    const/16 v2, 0x15

    .line 2117
    .line 2118
    invoke-direct {v1, v2}, Lcom/fsck/k9/mailstore/KoinModuleKt$$ExternalSyntheticLambda2;-><init>(I)V

    .line 2119
    .line 2120
    .line 2121
    new-instance v27, Lorg/koin/core/definition/BeanDefinition;

    .line 2122
    .line 2123
    const-class v2, Lcom/fsck/k9/notification/BackgroundWorkNotificationController;

    .line 2124
    .line 2125
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2126
    .line 2127
    .line 2128
    move-result-object v29

    .line 2129
    move-object/from16 v31, v1

    .line 2130
    .line 2131
    invoke-direct/range {v27 .. v32}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 2132
    .line 2133
    .line 2134
    move-object/from16 v1, v27

    .line 2135
    .line 2136
    invoke-static {v1, v0}, Lcoil3/size/ViewSizeResolver$-CC;->m$1(Lorg/koin/core/definition/BeanDefinition;Lorg/koin/core/module/Module;)V

    .line 2137
    .line 2138
    .line 2139
    return-object v23

    .line 2140
    :pswitch_f
    move-object/from16 v0, p1

    .line 2141
    .line 2142
    check-cast v0, Lcom/fsck/k9/notification/NotificationHolder;

    .line 2143
    .line 2144
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2145
    .line 2146
    .line 2147
    iget-object v0, v0, Lcom/fsck/k9/notification/NotificationHolder;->content:Lcom/fsck/k9/notification/NotificationContent;

    .line 2148
    .line 2149
    iget-object v0, v0, Lcom/fsck/k9/notification/NotificationContent;->sender:Lcom/fsck/k9/mail/Address;

    .line 2150
    .line 2151
    return-object v0

    .line 2152
    :pswitch_10
    move-object/from16 v0, p1

    .line 2153
    .line 2154
    check-cast v0, Lkotlin/text/MatcherMatchResult;

    .line 2155
    .line 2156
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2157
    .line 2158
    .line 2159
    new-instance v1, Lcom/fsck/k9/message/html/DividerReplacer$Divider;

    .line 2160
    .line 2161
    invoke-virtual {v0}, Lkotlin/text/MatcherMatchResult;->getRange()Lkotlin/ranges/IntRange;

    .line 2162
    .line 2163
    .line 2164
    move-result-object v2

    .line 2165
    iget v2, v2, Lkotlin/ranges/IntProgression;->first:I

    .line 2166
    .line 2167
    invoke-virtual {v0}, Lkotlin/text/MatcherMatchResult;->getRange()Lkotlin/ranges/IntRange;

    .line 2168
    .line 2169
    .line 2170
    move-result-object v0

    .line 2171
    iget v0, v0, Lkotlin/ranges/IntProgression;->last:I

    .line 2172
    .line 2173
    add-int/2addr v0, v4

    .line 2174
    invoke-direct {v1, v2, v0}, Lcom/fsck/k9/message/html/HtmlModification;-><init>(II)V

    .line 2175
    .line 2176
    .line 2177
    return-object v1

    .line 2178
    :pswitch_11
    move-object/from16 v0, p1

    .line 2179
    .line 2180
    check-cast v0, Lorg/koin/core/module/Module;

    .line 2181
    .line 2182
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2183
    .line 2184
    .line 2185
    new-instance v12, Lcom/fsck/k9/mailstore/KoinModuleKt$$ExternalSyntheticLambda2;

    .line 2186
    .line 2187
    invoke-direct {v12, v7}, Lcom/fsck/k9/mailstore/KoinModuleKt$$ExternalSyntheticLambda2;-><init>(I)V

    .line 2188
    .line 2189
    .line 2190
    new-instance v8, Lorg/koin/core/definition/BeanDefinition;

    .line 2191
    .line 2192
    const-class v1, Lcom/fsck/k9/message/extractors/AttachmentInfoExtractor;

    .line 2193
    .line 2194
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2195
    .line 2196
    .line 2197
    move-result-object v10

    .line 2198
    sget-object v14, Lorg/koin/core/registry/ScopeRegistry;->rootScopeQualifier:Lorg/koin/core/qualifier/StringQualifier;

    .line 2199
    .line 2200
    const/4 v11, 0x0

    .line 2201
    sget-object v18, Lorg/koin/core/definition/Kind;->Singleton:Lorg/koin/core/definition/Kind;

    .line 2202
    .line 2203
    move-object v9, v14

    .line 2204
    move-object/from16 v13, v18

    .line 2205
    .line 2206
    invoke-direct/range {v8 .. v13}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 2207
    .line 2208
    .line 2209
    new-instance v1, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 2210
    .line 2211
    invoke-direct {v1, v8}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 2212
    .line 2213
    .line 2214
    invoke-virtual {v0, v1}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 2215
    .line 2216
    .line 2217
    new-instance v1, Lcom/fsck/k9/mailstore/KoinModuleKt$$ExternalSyntheticLambda2;

    .line 2218
    .line 2219
    invoke-direct {v1, v5}, Lcom/fsck/k9/mailstore/KoinModuleKt$$ExternalSyntheticLambda2;-><init>(I)V

    .line 2220
    .line 2221
    .line 2222
    new-instance v13, Lorg/koin/core/definition/BeanDefinition;

    .line 2223
    .line 2224
    const-class v2, Lcom/fsck/k9/message/extractors/TextPartFinder;

    .line 2225
    .line 2226
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2227
    .line 2228
    .line 2229
    move-result-object v15

    .line 2230
    const/16 v16, 0x0

    .line 2231
    .line 2232
    move-object/from16 v17, v1

    .line 2233
    .line 2234
    invoke-direct/range {v13 .. v18}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 2235
    .line 2236
    .line 2237
    new-instance v1, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 2238
    .line 2239
    invoke-direct {v1, v13}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 2240
    .line 2241
    .line 2242
    invoke-virtual {v0, v1}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 2243
    .line 2244
    .line 2245
    new-instance v1, Lcom/fsck/k9/mailstore/KoinModuleKt$$ExternalSyntheticLambda2;

    .line 2246
    .line 2247
    const/16 v3, 0xa

    .line 2248
    .line 2249
    invoke-direct {v1, v3}, Lcom/fsck/k9/mailstore/KoinModuleKt$$ExternalSyntheticLambda2;-><init>(I)V

    .line 2250
    .line 2251
    .line 2252
    new-instance v13, Lorg/koin/core/definition/BeanDefinition;

    .line 2253
    .line 2254
    const-class v2, Lcom/fsck/k9/message/extractors/BasicPartInfoExtractor;

    .line 2255
    .line 2256
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2257
    .line 2258
    .line 2259
    move-result-object v15

    .line 2260
    move-object/from16 v17, v1

    .line 2261
    .line 2262
    invoke-direct/range {v13 .. v18}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 2263
    .line 2264
    .line 2265
    invoke-static {v13, v0}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/koin/core/definition/BeanDefinition;Lorg/koin/core/module/Module;)V

    .line 2266
    .line 2267
    .line 2268
    return-object v23

    .line 2269
    :pswitch_12
    move-object/from16 v0, p1

    .line 2270
    .line 2271
    check-cast v0, Lorg/koin/core/module/Module;

    .line 2272
    .line 2273
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2274
    .line 2275
    .line 2276
    new-instance v1, Lcom/fsck/k9/job/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 2277
    .line 2278
    const/16 v5, 0x1d

    .line 2279
    .line 2280
    invoke-direct {v1, v5}, Lcom/fsck/k9/job/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 2281
    .line 2282
    .line 2283
    new-instance v24, Lorg/koin/core/definition/BeanDefinition;

    .line 2284
    .line 2285
    const-class v5, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;

    .line 2286
    .line 2287
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2288
    .line 2289
    .line 2290
    move-result-object v26

    .line 2291
    sget-object v28, Lorg/koin/core/registry/ScopeRegistry;->rootScopeQualifier:Lorg/koin/core/qualifier/StringQualifier;

    .line 2292
    .line 2293
    const/16 v27, 0x0

    .line 2294
    .line 2295
    sget-object v32, Lorg/koin/core/definition/Kind;->Singleton:Lorg/koin/core/definition/Kind;

    .line 2296
    .line 2297
    move-object/from16 v25, v28

    .line 2298
    .line 2299
    move-object/from16 v29, v32

    .line 2300
    .line 2301
    move-object/from16 v28, v1

    .line 2302
    .line 2303
    invoke-direct/range {v24 .. v29}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 2304
    .line 2305
    .line 2306
    move-object/from16 v1, v24

    .line 2307
    .line 2308
    move-object/from16 v28, v25

    .line 2309
    .line 2310
    new-instance v5, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 2311
    .line 2312
    invoke-direct {v5, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 2313
    .line 2314
    .line 2315
    invoke-virtual {v0, v5}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 2316
    .line 2317
    .line 2318
    new-instance v1, Lcom/fsck/k9/mailstore/KoinModuleKt$$ExternalSyntheticLambda2;

    .line 2319
    .line 2320
    invoke-direct {v1, v10}, Lcom/fsck/k9/mailstore/KoinModuleKt$$ExternalSyntheticLambda2;-><init>(I)V

    .line 2321
    .line 2322
    .line 2323
    new-instance v27, Lorg/koin/core/definition/BeanDefinition;

    .line 2324
    .line 2325
    const-class v5, Lcom/fsck/k9/mailstore/MessageViewInfoExtractorFactory;

    .line 2326
    .line 2327
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2328
    .line 2329
    .line 2330
    move-result-object v29

    .line 2331
    const/16 v30, 0x0

    .line 2332
    .line 2333
    move-object/from16 v31, v1

    .line 2334
    .line 2335
    invoke-direct/range {v27 .. v32}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 2336
    .line 2337
    .line 2338
    move-object/from16 v1, v27

    .line 2339
    .line 2340
    new-instance v5, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 2341
    .line 2342
    invoke-direct {v5, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 2343
    .line 2344
    .line 2345
    invoke-virtual {v0, v5}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 2346
    .line 2347
    .line 2348
    new-instance v1, Lcom/fsck/k9/mailstore/KoinModuleKt$$ExternalSyntheticLambda2;

    .line 2349
    .line 2350
    invoke-direct {v1, v9}, Lcom/fsck/k9/mailstore/KoinModuleKt$$ExternalSyntheticLambda2;-><init>(I)V

    .line 2351
    .line 2352
    .line 2353
    new-instance v27, Lorg/koin/core/definition/BeanDefinition;

    .line 2354
    .line 2355
    const-class v5, Lcom/fsck/k9/mailstore/AndroidStorageFilesProviderFactory;

    .line 2356
    .line 2357
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2358
    .line 2359
    .line 2360
    move-result-object v29

    .line 2361
    move-object/from16 v31, v1

    .line 2362
    .line 2363
    invoke-direct/range {v27 .. v32}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 2364
    .line 2365
    .line 2366
    move-object/from16 v1, v27

    .line 2367
    .line 2368
    new-instance v5, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 2369
    .line 2370
    invoke-direct {v5, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 2371
    .line 2372
    .line 2373
    invoke-virtual {v0, v5}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 2374
    .line 2375
    .line 2376
    new-instance v1, Lcom/fsck/k9/mailstore/KoinModuleKt$$ExternalSyntheticLambda2;

    .line 2377
    .line 2378
    invoke-direct {v1, v6}, Lcom/fsck/k9/mailstore/KoinModuleKt$$ExternalSyntheticLambda2;-><init>(I)V

    .line 2379
    .line 2380
    .line 2381
    new-instance v27, Lorg/koin/core/definition/BeanDefinition;

    .line 2382
    .line 2383
    const-class v5, Lcom/fsck/k9/mailstore/SpecialFolderSelectionStrategy;

    .line 2384
    .line 2385
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2386
    .line 2387
    .line 2388
    move-result-object v29

    .line 2389
    move-object/from16 v31, v1

    .line 2390
    .line 2391
    invoke-direct/range {v27 .. v32}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 2392
    .line 2393
    .line 2394
    move-object/from16 v1, v27

    .line 2395
    .line 2396
    new-instance v5, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 2397
    .line 2398
    invoke-direct {v5, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 2399
    .line 2400
    .line 2401
    invoke-virtual {v0, v5}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 2402
    .line 2403
    .line 2404
    new-instance v1, Lcom/fsck/k9/mailstore/KoinModuleKt$$ExternalSyntheticLambda2;

    .line 2405
    .line 2406
    invoke-direct {v1, v8}, Lcom/fsck/k9/mailstore/KoinModuleKt$$ExternalSyntheticLambda2;-><init>(I)V

    .line 2407
    .line 2408
    .line 2409
    new-instance v27, Lorg/koin/core/definition/BeanDefinition;

    .line 2410
    .line 2411
    const-class v5, Lcom/fsck/k9/mailstore/K9BackendStorageFactory;

    .line 2412
    .line 2413
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2414
    .line 2415
    .line 2416
    move-result-object v29

    .line 2417
    move-object/from16 v31, v1

    .line 2418
    .line 2419
    invoke-direct/range {v27 .. v32}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 2420
    .line 2421
    .line 2422
    move-object/from16 v1, v27

    .line 2423
    .line 2424
    move-object/from16 v5, v32

    .line 2425
    .line 2426
    new-instance v6, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 2427
    .line 2428
    invoke-direct {v6, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 2429
    .line 2430
    .line 2431
    invoke-virtual {v0, v6}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 2432
    .line 2433
    .line 2434
    new-instance v1, Lcom/fsck/k9/job/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 2435
    .line 2436
    invoke-direct {v1, v3}, Lcom/fsck/k9/job/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 2437
    .line 2438
    .line 2439
    new-instance v27, Lorg/koin/core/definition/BeanDefinition;

    .line 2440
    .line 2441
    const-class v3, Lcom/fsck/k9/mailstore/SpecialLocalFoldersCreator;

    .line 2442
    .line 2443
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2444
    .line 2445
    .line 2446
    move-result-object v29

    .line 2447
    sget-object v32, Lorg/koin/core/definition/Kind;->Factory:Lorg/koin/core/definition/Kind;

    .line 2448
    .line 2449
    move-object/from16 v31, v1

    .line 2450
    .line 2451
    invoke-direct/range {v27 .. v32}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 2452
    .line 2453
    .line 2454
    move-object/from16 v1, v27

    .line 2455
    .line 2456
    move-object/from16 v3, v32

    .line 2457
    .line 2458
    new-instance v6, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 2459
    .line 2460
    invoke-direct {v6, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 2461
    .line 2462
    .line 2463
    invoke-virtual {v0, v6}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 2464
    .line 2465
    .line 2466
    new-instance v1, Lcom/fsck/k9/job/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 2467
    .line 2468
    const/16 v12, 0x19

    .line 2469
    .line 2470
    invoke-direct {v1, v12}, Lcom/fsck/k9/job/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 2471
    .line 2472
    .line 2473
    new-instance v27, Lorg/koin/core/definition/BeanDefinition;

    .line 2474
    .line 2475
    const-class v6, Lapp/k9mail/legacy/mailstore/MessageStoreManager;

    .line 2476
    .line 2477
    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2478
    .line 2479
    .line 2480
    move-result-object v29

    .line 2481
    move-object/from16 v31, v1

    .line 2482
    .line 2483
    move-object/from16 v32, v5

    .line 2484
    .line 2485
    invoke-direct/range {v27 .. v32}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 2486
    .line 2487
    .line 2488
    move-object/from16 v1, v27

    .line 2489
    .line 2490
    new-instance v5, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 2491
    .line 2492
    invoke-direct {v5, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 2493
    .line 2494
    .line 2495
    invoke-virtual {v0, v5}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 2496
    .line 2497
    .line 2498
    new-instance v1, Lcom/fsck/k9/job/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 2499
    .line 2500
    const/16 v5, 0x1a

    .line 2501
    .line 2502
    invoke-direct {v1, v5}, Lcom/fsck/k9/job/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 2503
    .line 2504
    .line 2505
    new-instance v27, Lorg/koin/core/definition/BeanDefinition;

    .line 2506
    .line 2507
    const-class v5, Lcom/fsck/k9/mailstore/MessageRepository;

    .line 2508
    .line 2509
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2510
    .line 2511
    .line 2512
    move-result-object v29

    .line 2513
    move-object/from16 v31, v1

    .line 2514
    .line 2515
    invoke-direct/range {v27 .. v32}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 2516
    .line 2517
    .line 2518
    move-object/from16 v1, v27

    .line 2519
    .line 2520
    move-object/from16 v5, v32

    .line 2521
    .line 2522
    new-instance v6, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 2523
    .line 2524
    invoke-direct {v6, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 2525
    .line 2526
    .line 2527
    invoke-virtual {v0, v6}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 2528
    .line 2529
    .line 2530
    new-instance v1, Lcom/fsck/k9/job/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 2531
    .line 2532
    const/16 v6, 0x1b

    .line 2533
    .line 2534
    invoke-direct {v1, v6}, Lcom/fsck/k9/job/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 2535
    .line 2536
    .line 2537
    new-instance v27, Lorg/koin/core/definition/BeanDefinition;

    .line 2538
    .line 2539
    const-class v6, Lcom/fsck/k9/message/extractors/MessagePreviewCreator;

    .line 2540
    .line 2541
    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2542
    .line 2543
    .line 2544
    move-result-object v29

    .line 2545
    move-object/from16 v31, v1

    .line 2546
    .line 2547
    move-object/from16 v32, v3

    .line 2548
    .line 2549
    invoke-direct/range {v27 .. v32}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 2550
    .line 2551
    .line 2552
    move-object/from16 v1, v27

    .line 2553
    .line 2554
    new-instance v3, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 2555
    .line 2556
    invoke-direct {v3, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 2557
    .line 2558
    .line 2559
    invoke-virtual {v0, v3}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 2560
    .line 2561
    .line 2562
    new-instance v1, Lcom/fsck/k9/job/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 2563
    .line 2564
    invoke-direct {v1, v2}, Lcom/fsck/k9/job/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 2565
    .line 2566
    .line 2567
    new-instance v27, Lorg/koin/core/definition/BeanDefinition;

    .line 2568
    .line 2569
    const-class v2, Lcom/fsck/k9/message/extractors/MessageFulltextCreator;

    .line 2570
    .line 2571
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2572
    .line 2573
    .line 2574
    move-result-object v29

    .line 2575
    move-object/from16 v31, v1

    .line 2576
    .line 2577
    invoke-direct/range {v27 .. v32}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 2578
    .line 2579
    .line 2580
    move-object/from16 v1, v27

    .line 2581
    .line 2582
    new-instance v2, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 2583
    .line 2584
    invoke-direct {v2, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 2585
    .line 2586
    .line 2587
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 2588
    .line 2589
    .line 2590
    new-instance v1, Lcom/fsck/k9/mailstore/KoinModuleKt$$ExternalSyntheticLambda2;

    .line 2591
    .line 2592
    move/from16 v2, v22

    .line 2593
    .line 2594
    invoke-direct {v1, v2}, Lcom/fsck/k9/mailstore/KoinModuleKt$$ExternalSyntheticLambda2;-><init>(I)V

    .line 2595
    .line 2596
    .line 2597
    new-instance v27, Lorg/koin/core/definition/BeanDefinition;

    .line 2598
    .line 2599
    const-class v2, Lcom/fsck/k9/message/extractors/AttachmentCounter;

    .line 2600
    .line 2601
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2602
    .line 2603
    .line 2604
    move-result-object v29

    .line 2605
    move-object/from16 v31, v1

    .line 2606
    .line 2607
    invoke-direct/range {v27 .. v32}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 2608
    .line 2609
    .line 2610
    move-object/from16 v1, v27

    .line 2611
    .line 2612
    new-instance v2, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 2613
    .line 2614
    invoke-direct {v2, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 2615
    .line 2616
    .line 2617
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 2618
    .line 2619
    .line 2620
    new-instance v1, Lcom/fsck/k9/mailstore/KoinModuleKt$$ExternalSyntheticLambda2;

    .line 2621
    .line 2622
    invoke-direct {v1, v4}, Lcom/fsck/k9/mailstore/KoinModuleKt$$ExternalSyntheticLambda2;-><init>(I)V

    .line 2623
    .line 2624
    .line 2625
    new-instance v27, Lorg/koin/core/definition/BeanDefinition;

    .line 2626
    .line 2627
    const-class v2, Lcom/fsck/k9/mailstore/SaveMessageDataCreator;

    .line 2628
    .line 2629
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2630
    .line 2631
    .line 2632
    move-result-object v29

    .line 2633
    move-object/from16 v31, v1

    .line 2634
    .line 2635
    invoke-direct/range {v27 .. v32}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 2636
    .line 2637
    .line 2638
    move-object/from16 v1, v27

    .line 2639
    .line 2640
    new-instance v2, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 2641
    .line 2642
    invoke-direct {v2, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 2643
    .line 2644
    .line 2645
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 2646
    .line 2647
    .line 2648
    new-instance v1, Lcom/fsck/k9/mailstore/KoinModuleKt$$ExternalSyntheticLambda2;

    .line 2649
    .line 2650
    invoke-direct {v1, v15}, Lcom/fsck/k9/mailstore/KoinModuleKt$$ExternalSyntheticLambda2;-><init>(I)V

    .line 2651
    .line 2652
    .line 2653
    new-instance v27, Lorg/koin/core/definition/BeanDefinition;

    .line 2654
    .line 2655
    const-class v2, Lcom/fsck/k9/mailstore/DefaultMessageListRepository;

    .line 2656
    .line 2657
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2658
    .line 2659
    .line 2660
    move-result-object v29

    .line 2661
    move-object/from16 v31, v1

    .line 2662
    .line 2663
    move-object/from16 v32, v5

    .line 2664
    .line 2665
    invoke-direct/range {v27 .. v32}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 2666
    .line 2667
    .line 2668
    move-object/from16 v1, v27

    .line 2669
    .line 2670
    new-instance v2, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 2671
    .line 2672
    invoke-direct {v2, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 2673
    .line 2674
    .line 2675
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 2676
    .line 2677
    .line 2678
    new-instance v1, Lcom/fsck/k9/mailstore/KoinModuleKt$$ExternalSyntheticLambda2;

    .line 2679
    .line 2680
    invoke-direct {v1, v11}, Lcom/fsck/k9/mailstore/KoinModuleKt$$ExternalSyntheticLambda2;-><init>(I)V

    .line 2681
    .line 2682
    .line 2683
    new-instance v27, Lorg/koin/core/definition/BeanDefinition;

    .line 2684
    .line 2685
    const-class v2, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;

    .line 2686
    .line 2687
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2688
    .line 2689
    .line 2690
    move-result-object v29

    .line 2691
    move-object/from16 v31, v1

    .line 2692
    .line 2693
    invoke-direct/range {v27 .. v32}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 2694
    .line 2695
    .line 2696
    move-object/from16 v1, v27

    .line 2697
    .line 2698
    invoke-static {v1, v0}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/koin/core/definition/BeanDefinition;Lorg/koin/core/module/Module;)V

    .line 2699
    .line 2700
    .line 2701
    return-object v23

    .line 2702
    :pswitch_13
    move-object/from16 v0, p1

    .line 2703
    .line 2704
    check-cast v0, Lcom/fsck/k9/mail/store/imap/FolderListItem;

    .line 2705
    .line 2706
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2707
    .line 2708
    .line 2709
    new-instance v1, Lcom/fsck/k9/mail/folders/RemoteFolder;

    .line 2710
    .line 2711
    iget-object v2, v0, Lcom/fsck/k9/mail/store/imap/FolderListItem;->serverId:Ljava/lang/String;

    .line 2712
    .line 2713
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2714
    .line 2715
    .line 2716
    iget-object v3, v0, Lcom/fsck/k9/mail/store/imap/FolderListItem;->name:Ljava/lang/String;

    .line 2717
    .line 2718
    iget-object v0, v0, Lcom/fsck/k9/mail/store/imap/FolderListItem;->type:Lcom/fsck/k9/mail/FolderType;

    .line 2719
    .line 2720
    invoke-direct {v1, v2, v3, v0}, Lcom/fsck/k9/mail/folders/RemoteFolder;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/fsck/k9/mail/FolderType;)V

    .line 2721
    .line 2722
    .line 2723
    return-object v1

    .line 2724
    :pswitch_14
    move-object/from16 v0, p1

    .line 2725
    .line 2726
    check-cast v0, Lkotlin/Pair;

    .line 2727
    .line 2728
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2729
    .line 2730
    .line 2731
    iget-object v0, v0, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 2732
    .line 2733
    check-cast v0, Ljava/lang/String;

    .line 2734
    .line 2735
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 2736
    .line 2737
    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 2738
    .line 2739
    .line 2740
    move-result-object v0

    .line 2741
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2742
    .line 2743
    .line 2744
    return-object v0

    .line 2745
    :pswitch_15
    move-object/from16 v0, p1

    .line 2746
    .line 2747
    check-cast v0, Lkotlin/Pair;

    .line 2748
    .line 2749
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2750
    .line 2751
    .line 2752
    iget-object v0, v0, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 2753
    .line 2754
    check-cast v0, Ljava/lang/String;

    .line 2755
    .line 2756
    const-string v1, "charset"

    .line 2757
    .line 2758
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2759
    .line 2760
    .line 2761
    move-result v0

    .line 2762
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2763
    .line 2764
    .line 2765
    move-result-object v0

    .line 2766
    return-object v0

    .line 2767
    :pswitch_16
    move-object/from16 v0, p1

    .line 2768
    .line 2769
    check-cast v0, Lcom/fsck/k9/mail/internet/MimeHeader$Field;

    .line 2770
    .line 2771
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2772
    .line 2773
    .line 2774
    invoke-virtual {v0}, Lcom/fsck/k9/mail/internet/MimeHeader$Field;->getValue()Ljava/lang/String;

    .line 2775
    .line 2776
    .line 2777
    move-result-object v0

    .line 2778
    return-object v0

    .line 2779
    :pswitch_17
    move-object/from16 v0, p1

    .line 2780
    .line 2781
    check-cast v0, Lorg/koin/core/module/Module;

    .line 2782
    .line 2783
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2784
    .line 2785
    .line 2786
    new-instance v5, Lcom/fsck/k9/job/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 2787
    .line 2788
    const/4 v2, 0x0

    .line 2789
    invoke-direct {v5, v2}, Lcom/fsck/k9/job/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 2790
    .line 2791
    .line 2792
    new-instance v1, Lorg/koin/core/definition/BeanDefinition;

    .line 2793
    .line 2794
    const-class v2, Lcom/fsck/k9/job/WorkManagerConfigurationProvider;

    .line 2795
    .line 2796
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2797
    .line 2798
    .line 2799
    move-result-object v3

    .line 2800
    sget-object v7, Lorg/koin/core/registry/ScopeRegistry;->rootScopeQualifier:Lorg/koin/core/qualifier/StringQualifier;

    .line 2801
    .line 2802
    const/4 v4, 0x0

    .line 2803
    sget-object v11, Lorg/koin/core/definition/Kind;->Singleton:Lorg/koin/core/definition/Kind;

    .line 2804
    .line 2805
    move-object v2, v7

    .line 2806
    move-object v6, v11

    .line 2807
    invoke-direct/range {v1 .. v6}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 2808
    .line 2809
    .line 2810
    new-instance v2, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 2811
    .line 2812
    invoke-direct {v2, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 2813
    .line 2814
    .line 2815
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 2816
    .line 2817
    .line 2818
    new-instance v10, Lcom/fsck/k9/job/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 2819
    .line 2820
    const/16 v1, 0x11

    .line 2821
    .line 2822
    invoke-direct {v10, v1}, Lcom/fsck/k9/job/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 2823
    .line 2824
    .line 2825
    new-instance v6, Lorg/koin/core/definition/BeanDefinition;

    .line 2826
    .line 2827
    const-class v1, Landroidx/work/WorkerFactory;

    .line 2828
    .line 2829
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2830
    .line 2831
    .line 2832
    move-result-object v8

    .line 2833
    const/4 v9, 0x0

    .line 2834
    invoke-direct/range {v6 .. v11}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 2835
    .line 2836
    .line 2837
    new-instance v1, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 2838
    .line 2839
    invoke-direct {v1, v6}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 2840
    .line 2841
    .line 2842
    invoke-virtual {v0, v1}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 2843
    .line 2844
    .line 2845
    new-instance v10, Lcom/fsck/k9/job/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 2846
    .line 2847
    invoke-direct {v10, v14}, Lcom/fsck/k9/job/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 2848
    .line 2849
    .line 2850
    new-instance v6, Lorg/koin/core/definition/BeanDefinition;

    .line 2851
    .line 2852
    const-class v1, Landroidx/work/impl/WorkManagerImpl;

    .line 2853
    .line 2854
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2855
    .line 2856
    .line 2857
    move-result-object v8

    .line 2858
    invoke-direct/range {v6 .. v11}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 2859
    .line 2860
    .line 2861
    new-instance v1, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 2862
    .line 2863
    invoke-direct {v1, v6}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 2864
    .line 2865
    .line 2866
    invoke-virtual {v0, v1}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 2867
    .line 2868
    .line 2869
    new-instance v10, Lcom/fsck/k9/job/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 2870
    .line 2871
    invoke-direct {v10, v13}, Lcom/fsck/k9/job/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 2872
    .line 2873
    .line 2874
    new-instance v6, Lorg/koin/core/definition/BeanDefinition;

    .line 2875
    .line 2876
    const-class v1, Lcom/fsck/k9/job/K9JobManager;

    .line 2877
    .line 2878
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2879
    .line 2880
    .line 2881
    move-result-object v8

    .line 2882
    invoke-direct/range {v6 .. v11}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 2883
    .line 2884
    .line 2885
    new-instance v1, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 2886
    .line 2887
    invoke-direct {v1, v6}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 2888
    .line 2889
    .line 2890
    invoke-virtual {v0, v1}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 2891
    .line 2892
    .line 2893
    new-instance v10, Lcom/fsck/k9/job/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 2894
    .line 2895
    const/16 v2, 0x14

    .line 2896
    .line 2897
    invoke-direct {v10, v2}, Lcom/fsck/k9/job/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 2898
    .line 2899
    .line 2900
    new-instance v6, Lorg/koin/core/definition/BeanDefinition;

    .line 2901
    .line 2902
    const-class v1, Lcom/fsck/k9/job/MailSyncWorkerManager;

    .line 2903
    .line 2904
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2905
    .line 2906
    .line 2907
    move-result-object v8

    .line 2908
    sget-object v11, Lorg/koin/core/definition/Kind;->Factory:Lorg/koin/core/definition/Kind;

    .line 2909
    .line 2910
    invoke-direct/range {v6 .. v11}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 2911
    .line 2912
    .line 2913
    new-instance v1, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 2914
    .line 2915
    invoke-direct {v1, v6}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 2916
    .line 2917
    .line 2918
    invoke-virtual {v0, v1}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 2919
    .line 2920
    .line 2921
    new-instance v10, Lcom/fsck/k9/job/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 2922
    .line 2923
    const/16 v2, 0x15

    .line 2924
    .line 2925
    invoke-direct {v10, v2}, Lcom/fsck/k9/job/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 2926
    .line 2927
    .line 2928
    new-instance v6, Lorg/koin/core/definition/BeanDefinition;

    .line 2929
    .line 2930
    const-class v1, Lcom/fsck/k9/job/MailSyncWorker;

    .line 2931
    .line 2932
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2933
    .line 2934
    .line 2935
    move-result-object v8

    .line 2936
    invoke-direct/range {v6 .. v11}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 2937
    .line 2938
    .line 2939
    new-instance v1, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 2940
    .line 2941
    invoke-direct {v1, v6}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 2942
    .line 2943
    .line 2944
    invoke-virtual {v0, v1}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 2945
    .line 2946
    .line 2947
    new-instance v10, Lcom/fsck/k9/job/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 2948
    .line 2949
    const/16 v1, 0x16

    .line 2950
    .line 2951
    invoke-direct {v10, v1}, Lcom/fsck/k9/job/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 2952
    .line 2953
    .line 2954
    new-instance v6, Lorg/koin/core/definition/BeanDefinition;

    .line 2955
    .line 2956
    const-class v1, Lcom/fsck/k9/job/FileLogLimitWorkManager;

    .line 2957
    .line 2958
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2959
    .line 2960
    .line 2961
    move-result-object v8

    .line 2962
    invoke-direct/range {v6 .. v11}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 2963
    .line 2964
    .line 2965
    new-instance v1, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 2966
    .line 2967
    invoke-direct {v1, v6}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 2968
    .line 2969
    .line 2970
    invoke-virtual {v0, v1}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 2971
    .line 2972
    .line 2973
    new-instance v10, Lcom/fsck/k9/job/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 2974
    .line 2975
    const/16 v1, 0x17

    .line 2976
    .line 2977
    invoke-direct {v10, v1}, Lcom/fsck/k9/job/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 2978
    .line 2979
    .line 2980
    new-instance v6, Lorg/koin/core/definition/BeanDefinition;

    .line 2981
    .line 2982
    const-class v1, Lcom/fsck/k9/job/SyncDebugWorker;

    .line 2983
    .line 2984
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2985
    .line 2986
    .line 2987
    move-result-object v8

    .line 2988
    invoke-direct/range {v6 .. v11}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 2989
    .line 2990
    .line 2991
    invoke-static {v6, v0}, Lcoil3/size/ViewSizeResolver$-CC;->m$1(Lorg/koin/core/definition/BeanDefinition;Lorg/koin/core/module/Module;)V

    .line 2992
    .line 2993
    .line 2994
    return-object v23

    .line 2995
    :pswitch_18
    move-object/from16 v0, p1

    .line 2996
    .line 2997
    check-cast v0, Lorg/koin/core/module/Module;

    .line 2998
    .line 2999
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3000
    .line 3001
    .line 3002
    new-instance v5, Lcom/fsck/k9/job/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 3003
    .line 3004
    const/16 v1, 0xc

    .line 3005
    .line 3006
    invoke-direct {v5, v1}, Lcom/fsck/k9/job/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 3007
    .line 3008
    .line 3009
    new-instance v1, Lorg/koin/core/definition/BeanDefinition;

    .line 3010
    .line 3011
    const-class v2, Lcom/fsck/k9/helper/ClipboardManager;

    .line 3012
    .line 3013
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 3014
    .line 3015
    .line 3016
    move-result-object v3

    .line 3017
    sget-object v7, Lorg/koin/core/registry/ScopeRegistry;->rootScopeQualifier:Lorg/koin/core/qualifier/StringQualifier;

    .line 3018
    .line 3019
    const/4 v4, 0x0

    .line 3020
    sget-object v6, Lorg/koin/core/definition/Kind;->Singleton:Lorg/koin/core/definition/Kind;

    .line 3021
    .line 3022
    move-object v2, v7

    .line 3023
    invoke-direct/range {v1 .. v6}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 3024
    .line 3025
    .line 3026
    new-instance v2, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 3027
    .line 3028
    invoke-direct {v2, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 3029
    .line 3030
    .line 3031
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 3032
    .line 3033
    .line 3034
    new-instance v10, Lcom/fsck/k9/job/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 3035
    .line 3036
    const/16 v1, 0xd

    .line 3037
    .line 3038
    invoke-direct {v10, v1}, Lcom/fsck/k9/job/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 3039
    .line 3040
    .line 3041
    move-object v11, v6

    .line 3042
    new-instance v6, Lorg/koin/core/definition/BeanDefinition;

    .line 3043
    .line 3044
    const-class v1, Lcom/fsck/k9/helper/MessageHelper;

    .line 3045
    .line 3046
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 3047
    .line 3048
    .line 3049
    move-result-object v8

    .line 3050
    const/4 v9, 0x0

    .line 3051
    invoke-direct/range {v6 .. v11}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 3052
    .line 3053
    .line 3054
    new-instance v1, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 3055
    .line 3056
    invoke-direct {v1, v6}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 3057
    .line 3058
    .line 3059
    invoke-virtual {v0, v1}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 3060
    .line 3061
    .line 3062
    new-instance v10, Lcom/fsck/k9/job/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 3063
    .line 3064
    const/16 v1, 0xe

    .line 3065
    .line 3066
    invoke-direct {v10, v1}, Lcom/fsck/k9/job/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 3067
    .line 3068
    .line 3069
    new-instance v6, Lorg/koin/core/definition/BeanDefinition;

    .line 3070
    .line 3071
    const-class v1, Lcom/fsck/k9/helper/AndroidKeyStoreDirectoryProvider;

    .line 3072
    .line 3073
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 3074
    .line 3075
    .line 3076
    move-result-object v8

    .line 3077
    sget-object v11, Lorg/koin/core/definition/Kind;->Factory:Lorg/koin/core/definition/Kind;

    .line 3078
    .line 3079
    invoke-direct/range {v6 .. v11}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 3080
    .line 3081
    .line 3082
    new-instance v1, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 3083
    .line 3084
    invoke-direct {v1, v6}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 3085
    .line 3086
    .line 3087
    invoke-virtual {v0, v1}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 3088
    .line 3089
    .line 3090
    new-instance v10, Lcom/fsck/k9/job/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 3091
    .line 3092
    const/16 v2, 0xf

    .line 3093
    .line 3094
    invoke-direct {v10, v2}, Lcom/fsck/k9/job/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 3095
    .line 3096
    .line 3097
    new-instance v6, Lorg/koin/core/definition/BeanDefinition;

    .line 3098
    .line 3099
    const-class v1, Landroid/app/AlarmManager;

    .line 3100
    .line 3101
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 3102
    .line 3103
    .line 3104
    move-result-object v8

    .line 3105
    invoke-direct/range {v6 .. v11}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 3106
    .line 3107
    .line 3108
    new-instance v1, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 3109
    .line 3110
    invoke-direct {v1, v6}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 3111
    .line 3112
    .line 3113
    invoke-virtual {v0, v1}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 3114
    .line 3115
    .line 3116
    new-instance v10, Lcom/fsck/k9/job/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 3117
    .line 3118
    const/16 v1, 0x10

    .line 3119
    .line 3120
    invoke-direct {v10, v1}, Lcom/fsck/k9/job/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 3121
    .line 3122
    .line 3123
    new-instance v6, Lorg/koin/core/definition/BeanDefinition;

    .line 3124
    .line 3125
    const-class v1, Lcom/fsck/k9/helper/RealContactNameProvider;

    .line 3126
    .line 3127
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 3128
    .line 3129
    .line 3130
    move-result-object v8

    .line 3131
    invoke-direct/range {v6 .. v11}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 3132
    .line 3133
    .line 3134
    invoke-static {v6, v0}, Lcoil3/size/ViewSizeResolver$-CC;->m$1(Lorg/koin/core/definition/BeanDefinition;Lorg/koin/core/module/Module;)V

    .line 3135
    .line 3136
    .line 3137
    return-object v23

    .line 3138
    :pswitch_19
    move-object/from16 v0, p1

    .line 3139
    .line 3140
    check-cast v0, Lorg/koin/core/module/Module;

    .line 3141
    .line 3142
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3143
    .line 3144
    .line 3145
    new-instance v14, Lcom/fsck/k9/job/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 3146
    .line 3147
    invoke-direct {v14, v9}, Lcom/fsck/k9/job/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 3148
    .line 3149
    .line 3150
    new-instance v10, Lorg/koin/core/definition/BeanDefinition;

    .line 3151
    .line 3152
    const-class v1, Lcom/fsck/k9/controller/push/PushServiceManager;

    .line 3153
    .line 3154
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 3155
    .line 3156
    .line 3157
    move-result-object v12

    .line 3158
    sget-object v16, Lorg/koin/core/registry/ScopeRegistry;->rootScopeQualifier:Lorg/koin/core/qualifier/StringQualifier;

    .line 3159
    .line 3160
    const/4 v13, 0x0

    .line 3161
    sget-object v20, Lorg/koin/core/definition/Kind;->Singleton:Lorg/koin/core/definition/Kind;

    .line 3162
    .line 3163
    move-object/from16 v11, v16

    .line 3164
    .line 3165
    move-object/from16 v15, v20

    .line 3166
    .line 3167
    invoke-direct/range {v10 .. v15}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 3168
    .line 3169
    .line 3170
    new-instance v1, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 3171
    .line 3172
    invoke-direct {v1, v10}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 3173
    .line 3174
    .line 3175
    invoke-virtual {v0, v1}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 3176
    .line 3177
    .line 3178
    new-instance v1, Lcom/fsck/k9/job/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 3179
    .line 3180
    invoke-direct {v1, v6}, Lcom/fsck/k9/job/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 3181
    .line 3182
    .line 3183
    new-instance v15, Lorg/koin/core/definition/BeanDefinition;

    .line 3184
    .line 3185
    const-class v2, Lcom/fsck/k9/controller/push/BootCompleteManager;

    .line 3186
    .line 3187
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 3188
    .line 3189
    .line 3190
    move-result-object v17

    .line 3191
    const/16 v18, 0x0

    .line 3192
    .line 3193
    move-object/from16 v19, v1

    .line 3194
    .line 3195
    invoke-direct/range {v15 .. v20}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 3196
    .line 3197
    .line 3198
    new-instance v1, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 3199
    .line 3200
    invoke-direct {v1, v15}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 3201
    .line 3202
    .line 3203
    invoke-virtual {v0, v1}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 3204
    .line 3205
    .line 3206
    new-instance v1, Lcom/fsck/k9/job/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 3207
    .line 3208
    invoke-direct {v1, v8}, Lcom/fsck/k9/job/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 3209
    .line 3210
    .line 3211
    new-instance v15, Lorg/koin/core/definition/BeanDefinition;

    .line 3212
    .line 3213
    const-class v2, Lcom/fsck/k9/controller/push/AutoSyncManager;

    .line 3214
    .line 3215
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 3216
    .line 3217
    .line 3218
    move-result-object v17

    .line 3219
    move-object/from16 v19, v1

    .line 3220
    .line 3221
    invoke-direct/range {v15 .. v20}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 3222
    .line 3223
    .line 3224
    new-instance v1, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 3225
    .line 3226
    invoke-direct {v1, v15}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 3227
    .line 3228
    .line 3229
    invoke-virtual {v0, v1}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 3230
    .line 3231
    .line 3232
    new-instance v1, Lcom/fsck/k9/job/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 3233
    .line 3234
    invoke-direct {v1, v7}, Lcom/fsck/k9/job/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 3235
    .line 3236
    .line 3237
    new-instance v15, Lorg/koin/core/definition/BeanDefinition;

    .line 3238
    .line 3239
    const-class v2, Lcom/fsck/k9/controller/push/AccountPushControllerFactory;

    .line 3240
    .line 3241
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 3242
    .line 3243
    .line 3244
    move-result-object v17

    .line 3245
    move-object/from16 v19, v1

    .line 3246
    .line 3247
    invoke-direct/range {v15 .. v20}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 3248
    .line 3249
    .line 3250
    new-instance v1, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 3251
    .line 3252
    invoke-direct {v1, v15}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 3253
    .line 3254
    .line 3255
    invoke-virtual {v0, v1}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 3256
    .line 3257
    .line 3258
    new-instance v1, Lcom/fsck/k9/job/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 3259
    .line 3260
    invoke-direct {v1, v5}, Lcom/fsck/k9/job/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 3261
    .line 3262
    .line 3263
    new-instance v15, Lorg/koin/core/definition/BeanDefinition;

    .line 3264
    .line 3265
    const-class v2, Lcom/fsck/k9/controller/push/PushController;

    .line 3266
    .line 3267
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 3268
    .line 3269
    .line 3270
    move-result-object v17

    .line 3271
    move-object/from16 v19, v1

    .line 3272
    .line 3273
    invoke-direct/range {v15 .. v20}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 3274
    .line 3275
    .line 3276
    new-instance v1, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 3277
    .line 3278
    invoke-direct {v1, v15}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 3279
    .line 3280
    .line 3281
    invoke-virtual {v0, v1}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 3282
    .line 3283
    .line 3284
    new-instance v1, Lcom/fsck/k9/job/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 3285
    .line 3286
    const/16 v3, 0xa

    .line 3287
    .line 3288
    invoke-direct {v1, v3}, Lcom/fsck/k9/job/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 3289
    .line 3290
    .line 3291
    new-instance v15, Lorg/koin/core/definition/BeanDefinition;

    .line 3292
    .line 3293
    const-class v2, Lcom/fsck/k9/controller/push/AlarmPermissionManager;

    .line 3294
    .line 3295
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 3296
    .line 3297
    .line 3298
    move-result-object v17

    .line 3299
    move-object/from16 v19, v1

    .line 3300
    .line 3301
    invoke-direct/range {v15 .. v20}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 3302
    .line 3303
    .line 3304
    invoke-static {v15, v0}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/koin/core/definition/BeanDefinition;Lorg/koin/core/module/Module;)V

    .line 3305
    .line 3306
    .line 3307
    return-object v23

    .line 3308
    :pswitch_1a
    move-object/from16 v0, p1

    .line 3309
    .line 3310
    check-cast v0, Lorg/koin/core/module/Module;

    .line 3311
    .line 3312
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3313
    .line 3314
    .line 3315
    new-instance v1, Lcom/fsck/k9/job/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 3316
    .line 3317
    invoke-direct {v1, v4}, Lcom/fsck/k9/job/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 3318
    .line 3319
    .line 3320
    new-instance v16, Lorg/koin/core/definition/BeanDefinition;

    .line 3321
    .line 3322
    const-class v2, Lcom/fsck/k9/controller/MessagingController;

    .line 3323
    .line 3324
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 3325
    .line 3326
    .line 3327
    move-result-object v18

    .line 3328
    sget-object v25, Lorg/koin/core/registry/ScopeRegistry;->rootScopeQualifier:Lorg/koin/core/qualifier/StringQualifier;

    .line 3329
    .line 3330
    const/16 v19, 0x0

    .line 3331
    .line 3332
    sget-object v29, Lorg/koin/core/definition/Kind;->Singleton:Lorg/koin/core/definition/Kind;

    .line 3333
    .line 3334
    move-object/from16 v20, v1

    .line 3335
    .line 3336
    move-object/from16 v17, v25

    .line 3337
    .line 3338
    move-object/from16 v21, v29

    .line 3339
    .line 3340
    invoke-direct/range {v16 .. v21}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 3341
    .line 3342
    .line 3343
    move-object/from16 v1, v16

    .line 3344
    .line 3345
    new-instance v2, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 3346
    .line 3347
    invoke-direct {v2, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 3348
    .line 3349
    .line 3350
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 3351
    .line 3352
    .line 3353
    new-instance v1, Lorg/koin/core/definition/KoinDefinition;

    .line 3354
    .line 3355
    invoke-direct {v1, v0, v2}, Lorg/koin/core/definition/KoinDefinition;-><init>(Lorg/koin/core/module/Module;Lorg/koin/core/instance/SingleInstanceFactory;)V

    .line 3356
    .line 3357
    .line 3358
    const-class v2, Lapp/k9mail/legacy/message/controller/MessagingControllerRegistry;

    .line 3359
    .line 3360
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 3361
    .line 3362
    .line 3363
    move-result-object v3

    .line 3364
    new-array v4, v4, [Lkotlin/reflect/KClass;

    .line 3365
    .line 3366
    const/16 v22, 0x0

    .line 3367
    .line 3368
    aput-object v3, v4, v22

    .line 3369
    .line 3370
    invoke-static {v1, v4}, Lkotlin/io/ByteStreamsKt;->binds(Lorg/koin/core/definition/KoinDefinition;[Lkotlin/reflect/KClass;)V

    .line 3371
    .line 3372
    .line 3373
    new-instance v1, Lcom/fsck/k9/job/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 3374
    .line 3375
    invoke-direct {v1, v15}, Lcom/fsck/k9/job/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 3376
    .line 3377
    .line 3378
    new-instance v24, Lorg/koin/core/definition/BeanDefinition;

    .line 3379
    .line 3380
    const-class v3, Lcom/fsck/k9/controller/MessagingControllerWrapper;

    .line 3381
    .line 3382
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 3383
    .line 3384
    .line 3385
    move-result-object v26

    .line 3386
    const/16 v27, 0x0

    .line 3387
    .line 3388
    move-object/from16 v28, v1

    .line 3389
    .line 3390
    invoke-direct/range {v24 .. v29}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 3391
    .line 3392
    .line 3393
    move-object/from16 v1, v24

    .line 3394
    .line 3395
    new-instance v3, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 3396
    .line 3397
    invoke-direct {v3, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 3398
    .line 3399
    .line 3400
    invoke-virtual {v0, v3}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 3401
    .line 3402
    .line 3403
    new-instance v1, Lcom/fsck/k9/job/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 3404
    .line 3405
    invoke-direct {v1, v11}, Lcom/fsck/k9/job/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 3406
    .line 3407
    .line 3408
    new-instance v24, Lorg/koin/core/definition/BeanDefinition;

    .line 3409
    .line 3410
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 3411
    .line 3412
    .line 3413
    move-result-object v26

    .line 3414
    move-object/from16 v28, v1

    .line 3415
    .line 3416
    invoke-direct/range {v24 .. v29}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 3417
    .line 3418
    .line 3419
    move-object/from16 v1, v24

    .line 3420
    .line 3421
    new-instance v2, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 3422
    .line 3423
    invoke-direct {v2, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 3424
    .line 3425
    .line 3426
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 3427
    .line 3428
    .line 3429
    new-instance v1, Lcom/fsck/k9/job/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 3430
    .line 3431
    invoke-direct {v1, v10}, Lcom/fsck/k9/job/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 3432
    .line 3433
    .line 3434
    new-instance v24, Lorg/koin/core/definition/BeanDefinition;

    .line 3435
    .line 3436
    const-class v2, Lcom/fsck/k9/controller/DefaultMessageCountsProvider;

    .line 3437
    .line 3438
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 3439
    .line 3440
    .line 3441
    move-result-object v26

    .line 3442
    move-object/from16 v28, v1

    .line 3443
    .line 3444
    invoke-direct/range {v24 .. v29}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 3445
    .line 3446
    .line 3447
    move-object/from16 v1, v24

    .line 3448
    .line 3449
    invoke-static {v1, v0}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/koin/core/definition/BeanDefinition;Lorg/koin/core/module/Module;)V

    .line 3450
    .line 3451
    .line 3452
    return-object v23

    .line 3453
    :pswitch_1b
    move-object/from16 v0, p1

    .line 3454
    .line 3455
    check-cast v0, Lorg/koin/core/module/Module;

    .line 3456
    .line 3457
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3458
    .line 3459
    .line 3460
    new-instance v8, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda9;

    .line 3461
    .line 3462
    invoke-direct {v8, v3}, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda9;-><init>(I)V

    .line 3463
    .line 3464
    .line 3465
    new-instance v4, Lorg/koin/core/definition/BeanDefinition;

    .line 3466
    .line 3467
    const-class v1, Lcom/fsck/k9/contacts/ContactLetterExtractor;

    .line 3468
    .line 3469
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 3470
    .line 3471
    .line 3472
    move-result-object v6

    .line 3473
    sget-object v10, Lorg/koin/core/registry/ScopeRegistry;->rootScopeQualifier:Lorg/koin/core/qualifier/StringQualifier;

    .line 3474
    .line 3475
    const/4 v7, 0x0

    .line 3476
    sget-object v9, Lorg/koin/core/definition/Kind;->Singleton:Lorg/koin/core/definition/Kind;

    .line 3477
    .line 3478
    move-object v5, v10

    .line 3479
    invoke-direct/range {v4 .. v9}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 3480
    .line 3481
    .line 3482
    new-instance v1, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 3483
    .line 3484
    invoke-direct {v1, v4}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 3485
    .line 3486
    .line 3487
    invoke-virtual {v0, v1}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 3488
    .line 3489
    .line 3490
    new-instance v13, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda9;

    .line 3491
    .line 3492
    const/16 v12, 0x19

    .line 3493
    .line 3494
    invoke-direct {v13, v12}, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda9;-><init>(I)V

    .line 3495
    .line 3496
    .line 3497
    new-instance v9, Lorg/koin/core/definition/BeanDefinition;

    .line 3498
    .line 3499
    const-class v1, Lcom/fsck/k9/contacts/ContactLetterBitmapConfig;

    .line 3500
    .line 3501
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 3502
    .line 3503
    .line 3504
    move-result-object v11

    .line 3505
    const/4 v12, 0x0

    .line 3506
    sget-object v14, Lorg/koin/core/definition/Kind;->Factory:Lorg/koin/core/definition/Kind;

    .line 3507
    .line 3508
    invoke-direct/range {v9 .. v14}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 3509
    .line 3510
    .line 3511
    new-instance v1, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 3512
    .line 3513
    invoke-direct {v1, v9}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 3514
    .line 3515
    .line 3516
    invoke-virtual {v0, v1}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 3517
    .line 3518
    .line 3519
    new-instance v13, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda9;

    .line 3520
    .line 3521
    const/16 v3, 0x1a

    .line 3522
    .line 3523
    invoke-direct {v13, v3}, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda9;-><init>(I)V

    .line 3524
    .line 3525
    .line 3526
    new-instance v9, Lorg/koin/core/definition/BeanDefinition;

    .line 3527
    .line 3528
    const-class v1, Lcom/fsck/k9/contacts/ContactLetterBitmapCreator;

    .line 3529
    .line 3530
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 3531
    .line 3532
    .line 3533
    move-result-object v11

    .line 3534
    invoke-direct/range {v9 .. v14}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 3535
    .line 3536
    .line 3537
    new-instance v1, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 3538
    .line 3539
    invoke-direct {v1, v9}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 3540
    .line 3541
    .line 3542
    invoke-virtual {v0, v1}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 3543
    .line 3544
    .line 3545
    new-instance v13, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda9;

    .line 3546
    .line 3547
    const/16 v3, 0x1b

    .line 3548
    .line 3549
    invoke-direct {v13, v3}, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda9;-><init>(I)V

    .line 3550
    .line 3551
    .line 3552
    new-instance v9, Lorg/koin/core/definition/BeanDefinition;

    .line 3553
    .line 3554
    const-class v1, Lcom/fsck/k9/contacts/ContactPhotoLoader;

    .line 3555
    .line 3556
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 3557
    .line 3558
    .line 3559
    move-result-object v11

    .line 3560
    invoke-direct/range {v9 .. v14}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 3561
    .line 3562
    .line 3563
    new-instance v1, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 3564
    .line 3565
    invoke-direct {v1, v9}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 3566
    .line 3567
    .line 3568
    invoke-virtual {v0, v1}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 3569
    .line 3570
    .line 3571
    new-instance v13, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda9;

    .line 3572
    .line 3573
    invoke-direct {v13, v2}, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda9;-><init>(I)V

    .line 3574
    .line 3575
    .line 3576
    new-instance v9, Lorg/koin/core/definition/BeanDefinition;

    .line 3577
    .line 3578
    const-class v1, Lcom/fsck/k9/contacts/ContactPictureLoader;

    .line 3579
    .line 3580
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 3581
    .line 3582
    .line 3583
    move-result-object v11

    .line 3584
    invoke-direct/range {v9 .. v14}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 3585
    .line 3586
    .line 3587
    new-instance v1, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 3588
    .line 3589
    invoke-direct {v1, v9}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 3590
    .line 3591
    .line 3592
    invoke-virtual {v0, v1}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 3593
    .line 3594
    .line 3595
    new-instance v13, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda9;

    .line 3596
    .line 3597
    const/16 v1, 0x1d

    .line 3598
    .line 3599
    invoke-direct {v13, v1}, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda9;-><init>(I)V

    .line 3600
    .line 3601
    .line 3602
    new-instance v9, Lorg/koin/core/definition/BeanDefinition;

    .line 3603
    .line 3604
    const-class v1, Lcom/fsck/k9/contacts/ContactImageBitmapDecoderFactory;

    .line 3605
    .line 3606
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 3607
    .line 3608
    .line 3609
    move-result-object v11

    .line 3610
    invoke-direct/range {v9 .. v14}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 3611
    .line 3612
    .line 3613
    invoke-static {v9, v0}, Lcoil3/size/ViewSizeResolver$-CC;->m$1(Lorg/koin/core/definition/BeanDefinition;Lorg/koin/core/module/Module;)V

    .line 3614
    .line 3615
    .line 3616
    return-object v23

    .line 3617
    :pswitch_1c
    move-object/from16 v0, p1

    .line 3618
    .line 3619
    check-cast v0, Lorg/koin/core/module/Module;

    .line 3620
    .line 3621
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3622
    .line 3623
    .line 3624
    new-instance v8, Lcom/fsck/k9/ui/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 3625
    .line 3626
    const/4 v1, 0x0

    .line 3627
    invoke-direct {v8, v1}, Lcom/fsck/k9/ui/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 3628
    .line 3629
    .line 3630
    new-instance v4, Lorg/koin/core/definition/BeanDefinition;

    .line 3631
    .line 3632
    const-class v1, Lcom/fsck/k9/ui/helper/DisplayHtmlUiFactory;

    .line 3633
    .line 3634
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 3635
    .line 3636
    .line 3637
    move-result-object v6

    .line 3638
    sget-object v10, Lorg/koin/core/registry/ScopeRegistry;->rootScopeQualifier:Lorg/koin/core/qualifier/StringQualifier;

    .line 3639
    .line 3640
    const/4 v7, 0x0

    .line 3641
    sget-object v14, Lorg/koin/core/definition/Kind;->Factory:Lorg/koin/core/definition/Kind;

    .line 3642
    .line 3643
    move-object v5, v10

    .line 3644
    move-object v9, v14

    .line 3645
    invoke-direct/range {v4 .. v9}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 3646
    .line 3647
    .line 3648
    move-object v1, v9

    .line 3649
    new-instance v5, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 3650
    .line 3651
    invoke-direct {v5, v4}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 3652
    .line 3653
    .line 3654
    invoke-virtual {v0, v5}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 3655
    .line 3656
    .line 3657
    new-instance v13, Lcom/fsck/k9/ui/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 3658
    .line 3659
    const/16 v4, 0x15

    .line 3660
    .line 3661
    invoke-direct {v13, v4}, Lcom/fsck/k9/ui/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 3662
    .line 3663
    .line 3664
    new-instance v9, Lorg/koin/core/definition/BeanDefinition;

    .line 3665
    .line 3666
    const-class v4, Lapp/k9mail/legacy/message/controller/MessagingControllerMailChecker;

    .line 3667
    .line 3668
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 3669
    .line 3670
    .line 3671
    move-result-object v11

    .line 3672
    const/4 v12, 0x0

    .line 3673
    sget-object v14, Lorg/koin/core/definition/Kind;->Singleton:Lorg/koin/core/definition/Kind;

    .line 3674
    .line 3675
    invoke-direct/range {v9 .. v14}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 3676
    .line 3677
    .line 3678
    new-instance v4, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 3679
    .line 3680
    invoke-direct {v4, v9}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 3681
    .line 3682
    .line 3683
    invoke-virtual {v0, v4}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 3684
    .line 3685
    .line 3686
    new-instance v13, Lcom/fsck/k9/ui/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 3687
    .line 3688
    const/16 v4, 0x16

    .line 3689
    .line 3690
    invoke-direct {v13, v4}, Lcom/fsck/k9/ui/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 3691
    .line 3692
    .line 3693
    new-instance v9, Lorg/koin/core/definition/BeanDefinition;

    .line 3694
    .line 3695
    const-class v4, Lcom/fsck/k9/ui/settings/AboutViewModel;

    .line 3696
    .line 3697
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 3698
    .line 3699
    .line 3700
    move-result-object v11

    .line 3701
    move-object v14, v1

    .line 3702
    invoke-direct/range {v9 .. v14}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 3703
    .line 3704
    .line 3705
    new-instance v1, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 3706
    .line 3707
    invoke-direct {v1, v9}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 3708
    .line 3709
    .line 3710
    invoke-virtual {v0, v1}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 3711
    .line 3712
    .line 3713
    new-instance v12, Lorg/koin/core/qualifier/StringQualifier;

    .line 3714
    .line 3715
    const-string v1, "MessageView"

    .line 3716
    .line 3717
    invoke-direct {v12, v1}, Lorg/koin/core/qualifier/StringQualifier;-><init>(Ljava/lang/String;)V

    .line 3718
    .line 3719
    .line 3720
    new-instance v13, Lcom/fsck/k9/ui/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 3721
    .line 3722
    const/16 v1, 0x17

    .line 3723
    .line 3724
    invoke-direct {v13, v1}, Lcom/fsck/k9/ui/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 3725
    .line 3726
    .line 3727
    new-instance v9, Lorg/koin/core/definition/BeanDefinition;

    .line 3728
    .line 3729
    const-class v1, Lcom/fsck/k9/message/html/DisplayHtml;

    .line 3730
    .line 3731
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 3732
    .line 3733
    .line 3734
    move-result-object v11

    .line 3735
    invoke-direct/range {v9 .. v14}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 3736
    .line 3737
    .line 3738
    new-instance v1, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 3739
    .line 3740
    invoke-direct {v1, v9}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 3741
    .line 3742
    .line 3743
    invoke-virtual {v0, v1}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 3744
    .line 3745
    .line 3746
    new-instance v13, Lcom/fsck/k9/ui/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 3747
    .line 3748
    invoke-direct {v13, v3}, Lcom/fsck/k9/ui/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 3749
    .line 3750
    .line 3751
    new-instance v9, Lorg/koin/core/definition/BeanDefinition;

    .line 3752
    .line 3753
    const-class v1, Lcom/fsck/k9/ui/helper/SizeFormatter;

    .line 3754
    .line 3755
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 3756
    .line 3757
    .line 3758
    move-result-object v11

    .line 3759
    const/4 v12, 0x0

    .line 3760
    invoke-direct/range {v9 .. v14}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 3761
    .line 3762
    .line 3763
    new-instance v1, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 3764
    .line 3765
    invoke-direct {v1, v9}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 3766
    .line 3767
    .line 3768
    invoke-virtual {v0, v1}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 3769
    .line 3770
    .line 3771
    new-instance v13, Lcom/fsck/k9/ui/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 3772
    .line 3773
    const/16 v12, 0x19

    .line 3774
    .line 3775
    invoke-direct {v13, v12}, Lcom/fsck/k9/ui/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 3776
    .line 3777
    .line 3778
    new-instance v9, Lorg/koin/core/definition/BeanDefinition;

    .line 3779
    .line 3780
    const-class v1, Lcom/fsck/k9/ui/share/ShareIntentBuilder;

    .line 3781
    .line 3782
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 3783
    .line 3784
    .line 3785
    move-result-object v11

    .line 3786
    const/4 v12, 0x0

    .line 3787
    invoke-direct/range {v9 .. v14}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 3788
    .line 3789
    .line 3790
    new-instance v1, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 3791
    .line 3792
    invoke-direct {v1, v9}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 3793
    .line 3794
    .line 3795
    invoke-virtual {v0, v1}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 3796
    .line 3797
    .line 3798
    new-instance v13, Lcom/fsck/k9/ui/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 3799
    .line 3800
    const/16 v3, 0x1a

    .line 3801
    .line 3802
    invoke-direct {v13, v3}, Lcom/fsck/k9/ui/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 3803
    .line 3804
    .line 3805
    new-instance v9, Lorg/koin/core/definition/BeanDefinition;

    .line 3806
    .line 3807
    const-class v1, Lcom/fsck/k9/ui/messageview/LinkTextHandler;

    .line 3808
    .line 3809
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 3810
    .line 3811
    .line 3812
    move-result-object v11

    .line 3813
    invoke-direct/range {v9 .. v14}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 3814
    .line 3815
    .line 3816
    new-instance v1, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 3817
    .line 3818
    invoke-direct {v1, v9}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 3819
    .line 3820
    .line 3821
    invoke-virtual {v0, v1}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 3822
    .line 3823
    .line 3824
    new-instance v13, Lcom/fsck/k9/ui/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 3825
    .line 3826
    const/16 v3, 0x1b

    .line 3827
    .line 3828
    invoke-direct {v13, v3}, Lcom/fsck/k9/ui/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 3829
    .line 3830
    .line 3831
    new-instance v9, Lorg/koin/core/definition/BeanDefinition;

    .line 3832
    .line 3833
    const-class v1, Lapp/k9mail/core/ui/compose/common/window/FoldableStateObserver;

    .line 3834
    .line 3835
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 3836
    .line 3837
    .line 3838
    move-result-object v11

    .line 3839
    invoke-direct/range {v9 .. v14}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 3840
    .line 3841
    .line 3842
    new-instance v1, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 3843
    .line 3844
    invoke-direct {v1, v9}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 3845
    .line 3846
    .line 3847
    invoke-virtual {v0, v1}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 3848
    .line 3849
    .line 3850
    new-instance v13, Lcom/fsck/k9/ui/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 3851
    .line 3852
    invoke-direct {v13, v2}, Lcom/fsck/k9/ui/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 3853
    .line 3854
    .line 3855
    new-instance v9, Lorg/koin/core/definition/BeanDefinition;

    .line 3856
    .line 3857
    const-class v1, Lcom/fsck/k9/ui/messagelist/MessageListFragment$Factory;

    .line 3858
    .line 3859
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 3860
    .line 3861
    .line 3862
    move-result-object v11

    .line 3863
    invoke-direct/range {v9 .. v14}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 3864
    .line 3865
    .line 3866
    invoke-static {v9, v0}, Lcoil3/size/ViewSizeResolver$-CC;->m$1(Lorg/koin/core/definition/BeanDefinition;Lorg/koin/core/module/Module;)V

    .line 3867
    .line 3868
    .line 3869
    return-object v23

    .line 3870
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
