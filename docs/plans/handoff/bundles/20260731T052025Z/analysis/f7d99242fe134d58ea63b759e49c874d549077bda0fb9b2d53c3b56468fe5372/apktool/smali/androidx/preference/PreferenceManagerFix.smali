.class public final Landroidx/preference/PreferenceManagerFix;
.super Landroidx/preference/PreferenceManager;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final editorField:Ljava/lang/reflect/Field;

.field public static final packages:Landroidx/collection/ArraySet;


# instance fields
.field public inflateInProgress:Z

.field public noCommit:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Landroidx/collection/ArraySet;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/collection/ArraySet;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/preference/PreferenceManagerFix;->packages:Landroidx/collection/ArraySet;

    .line 8
    .line 9
    const-class v0, Landroidx/preference/PreferenceManager;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    array-length v2, v0

    .line 16
    :goto_0
    if-ge v1, v2, :cond_1

    .line 17
    .line 18
    aget-object v3, v0, v1

    .line 19
    .line 20
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    const-class v5, Landroid/content/SharedPreferences$Editor;

    .line 25
    .line 26
    if-ne v4, v5, :cond_0

    .line 27
    .line 28
    sput-object v3, Landroidx/preference/PreferenceManagerFix;->editorField:Ljava/lang/reflect/Field;

    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    invoke-virtual {v3, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 32
    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    :goto_1
    sget-object v0, Landroidx/preference/PreferenceManagerFix;->packages:Landroidx/collection/ArraySet;

    .line 39
    .line 40
    const-string v1, "."

    .line 41
    .line 42
    const-string v2, "com.takisoft.preferencex"

    .line 43
    .line 44
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    return-void
.end method


# virtual methods
.method public final getEditor()Landroid/content/SharedPreferences$Editor;
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroidx/preference/PreferenceManagerFix;->inflateInProgress:Z

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    sget-object v0, Landroidx/preference/PreferenceManagerFix;->editorField:Ljava/lang/reflect/Field;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    iget-boolean v1, p0, Landroidx/preference/PreferenceManagerFix;->noCommit:Z

    .line 11
    .line 12
    if-eqz v1, :cond_2

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 20
    .line 21
    if-nez v2, :cond_1

    .line 22
    .line 23
    :try_start_1
    invoke-virtual {p0}, Landroidx/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 28
    .line 29
    .line 30
    move-result-object v1
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    .line 31
    :try_start_2
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1

    .line 32
    .line 33
    .line 34
    return-object v1

    .line 35
    :catch_0
    move-object v1, v2

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    return-object v2

    .line 38
    :catch_1
    :goto_0
    return-object v1

    .line 39
    :cond_2
    invoke-virtual {p0}, Landroidx/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    return-object p0

    .line 48
    :cond_3
    :goto_1
    invoke-super {p0}, Landroidx/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0
.end method

.method public final inflateFromResource(Landroid/content/Context;ILandroidx/preference/PreferenceScreen;)Landroidx/preference/PreferenceScreen;
    .locals 8

    .line 1
    const/4 p3, 0x0

    .line 2
    const/4 v0, 0x1

    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    iput-boolean v0, p0, Landroidx/preference/PreferenceManagerFix;->inflateInProgress:Z

    .line 5
    .line 6
    sget-object v2, Landroidx/preference/PreferenceManagerFix;->editorField:Ljava/lang/reflect/Field;

    .line 7
    .line 8
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    check-cast v3, Landroid/content/SharedPreferences$Editor;

    .line 13
    .line 14
    iput-boolean v0, p0, Landroidx/preference/PreferenceManagerFix;->noCommit:Z

    .line 15
    .line 16
    new-instance v0, Landroidx/preference/PreferenceInflater;

    .line 17
    .line 18
    invoke-direct {v0, p1, p0}, Landroidx/preference/PreferenceInflater;-><init>(Landroid/content/Context;Landroidx/preference/PreferenceManager;)V

    .line 19
    .line 20
    .line 21
    iget-object v3, v0, Landroidx/preference/PreferenceInflater;->mDefaultPackages:[Ljava/lang/String;

    .line 22
    .line 23
    array-length v4, v3

    .line 24
    sget-object v5, Landroidx/preference/PreferenceManagerFix;->packages:Landroidx/collection/ArraySet;

    .line 25
    .line 26
    iget v6, v5, Landroidx/collection/ArraySet;->_size:I

    .line 27
    .line 28
    add-int/2addr v4, v6

    .line 29
    new-array v4, v4, [Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v5, v4}, Landroidx/collection/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    iget v5, v5, Landroidx/collection/ArraySet;->_size:I

    .line 35
    .line 36
    array-length v6, v3

    .line 37
    invoke-static {v3, v1, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 38
    .line 39
    .line 40
    iput-object v4, v0, Landroidx/preference/PreferenceInflater;->mDefaultPackages:[Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    .line 47
    .line 48
    .line 49
    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 50
    :try_start_1
    invoke-virtual {v0, v3, p3}, Landroidx/preference/PreferenceInflater;->inflate(Landroid/content/res/XmlResourceParser;Landroidx/preference/PreferenceGroup;)Landroidx/preference/PreferenceGroup;

    .line 51
    .line 52
    .line 53
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 54
    :try_start_2
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    .line 55
    .line 56
    .line 57
    check-cast v0, Landroidx/preference/PreferenceScreen;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 58
    .line 59
    :try_start_3
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->onAttachedToHierarchy(Landroidx/preference/PreferenceManager;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p3

    .line 66
    check-cast p3, Landroid/content/SharedPreferences$Editor;

    .line 67
    .line 68
    if-eqz p3, :cond_0

    .line 69
    .line 70
    invoke-interface {p3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 71
    .line 72
    .line 73
    :cond_0
    iput-boolean v1, p0, Landroidx/preference/PreferenceManagerFix;->noCommit:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 74
    .line 75
    iput-boolean v1, p0, Landroidx/preference/PreferenceManagerFix;->inflateInProgress:Z

    .line 76
    .line 77
    return-object v0

    .line 78
    :catchall_0
    move-exception p3

    .line 79
    goto :goto_0

    .line 80
    :catchall_1
    move-exception v0

    .line 81
    move-object v7, v0

    .line 82
    move-object v0, p3

    .line 83
    move-object p3, v7

    .line 84
    goto :goto_0

    .line 85
    :catchall_2
    move-exception v0

    .line 86
    :try_start_4
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    .line 87
    .line 88
    .line 89
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 90
    :goto_0
    :try_start_5
    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 91
    .line 92
    .line 93
    iput-boolean v1, p0, Landroidx/preference/PreferenceManagerFix;->inflateInProgress:Z

    .line 94
    .line 95
    invoke-super {p0, p1, p2, v0}, Landroidx/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroidx/preference/PreferenceScreen;)Landroidx/preference/PreferenceScreen;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    return-object p0

    .line 100
    :catchall_3
    move-exception p1

    .line 101
    iput-boolean v1, p0, Landroidx/preference/PreferenceManagerFix;->inflateInProgress:Z

    .line 102
    .line 103
    throw p1
.end method

.method public final shouldCommit()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/preference/PreferenceManagerFix;->inflateInProgress:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-boolean p0, p0, Landroidx/preference/PreferenceManager;->mNoCommit:Z

    .line 6
    .line 7
    xor-int/lit8 p0, p0, 0x1

    .line 8
    .line 9
    return p0

    .line 10
    :cond_0
    iget-boolean p0, p0, Landroidx/preference/PreferenceManagerFix;->noCommit:Z

    .line 11
    .line 12
    return p0
.end method
