.class public final Ldagger/android/AndroidInjection;
.super Ljava/lang/Object;
.source "AndroidInjection.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "dagger.android"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findHasAndroidInjectorForFragment(Landroid/app/Fragment;)Ldagger/android/HasAndroidInjector;
    .locals 2

    move-object v0, p0

    .line 96
    :cond_0
    invoke-virtual {v0}, Landroid/app/Fragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 97
    instance-of v1, v0, Ldagger/android/HasAndroidInjector;

    if-eqz v1, :cond_0

    .line 98
    check-cast v0, Ldagger/android/HasAndroidInjector;

    return-object v0

    .line 101
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 102
    instance-of v1, v0, Ldagger/android/HasAndroidInjector;

    if-eqz v1, :cond_2

    .line 103
    check-cast v0, Ldagger/android/HasAndroidInjector;

    return-object v0

    .line 105
    :cond_2
    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    instance-of v1, v1, Ldagger/android/HasAndroidInjector;

    if-eqz v1, :cond_3

    .line 106
    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p0

    check-cast p0, Ldagger/android/HasAndroidInjector;

    return-object p0

    .line 108
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 109
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "No injector was found for %s"

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inject(Landroid/app/Activity;)V
    .locals 2

    .line 45
    const-string v0, "activity"

    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 46
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 47
    instance-of v1, v0, Ldagger/android/HasAndroidInjector;

    if-eqz v1, :cond_0

    .line 55
    check-cast v0, Ldagger/android/HasAndroidInjector;

    invoke-static {p0, v0}, Ldagger/android/AndroidInjection;->inject(Ljava/lang/Object;Ldagger/android/HasAndroidInjector;)V

    return-void

    .line 48
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    .line 51
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Ldagger/android/HasAndroidInjector;

    .line 52
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 49
    const-string v1, "%s does not implement %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static inject(Landroid/app/Fragment;)V
    .locals 4

    .line 80
    const-string v0, "fragment"

    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 81
    invoke-static {p0}, Ldagger/android/AndroidInjection;->findHasAndroidInjectorForFragment(Landroid/app/Fragment;)Ldagger/android/HasAndroidInjector;

    move-result-object v0

    const/4 v1, 0x3

    .line 82
    const-string v2, "dagger.android"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    .line 88
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    .line 85
    const-string v3, "An injector for %s was found in %s"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 83
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_0
    invoke-static {p0, v0}, Ldagger/android/AndroidInjection;->inject(Ljava/lang/Object;Ldagger/android/HasAndroidInjector;)V

    return-void
.end method

.method public static inject(Landroid/app/Service;)V
    .locals 2

    .line 120
    const-string v0, "service"

    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 121
    invoke-virtual {p0}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 122
    instance-of v1, v0, Ldagger/android/HasAndroidInjector;

    if-eqz v1, :cond_0

    .line 130
    check-cast v0, Ldagger/android/HasAndroidInjector;

    invoke-static {p0, v0}, Ldagger/android/AndroidInjection;->inject(Ljava/lang/Object;Ldagger/android/HasAndroidInjector;)V

    return-void

    .line 123
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    .line 126
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Ldagger/android/HasAndroidInjector;

    .line 127
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 124
    const-string v1, "%s does not implement %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static inject(Landroid/content/BroadcastReceiver;Landroid/content/Context;)V
    .locals 1

    .line 141
    const-string v0, "broadcastReceiver"

    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 142
    const-string v0, "context"

    invoke-static {p1, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 143
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    .line 144
    instance-of v0, p1, Ldagger/android/HasAndroidInjector;

    if-eqz v0, :cond_0

    .line 152
    check-cast p1, Ldagger/android/HasAndroidInjector;

    invoke-static {p0, p1}, Ldagger/android/AndroidInjection;->inject(Ljava/lang/Object;Ldagger/android/HasAndroidInjector;)V

    return-void

    .line 145
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    .line 148
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    const-class v0, Ldagger/android/HasAndroidInjector;

    .line 149
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    .line 146
    const-string v0, "%s does not implement %s"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static inject(Landroid/content/ContentProvider;)V
    .locals 2

    .line 163
    const-string v0, "contentProvider"

    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 164
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 165
    instance-of v1, v0, Ldagger/android/HasAndroidInjector;

    if-eqz v1, :cond_0

    .line 173
    check-cast v0, Ldagger/android/HasAndroidInjector;

    invoke-static {p0, v0}, Ldagger/android/AndroidInjection;->inject(Ljava/lang/Object;Ldagger/android/HasAndroidInjector;)V

    return-void

    .line 166
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    .line 169
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Ldagger/android/HasAndroidInjector;

    .line 170
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 167
    const-string v1, "%s does not implement %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static inject(Ljava/lang/Object;Ldagger/android/HasAndroidInjector;)V
    .locals 2

    .line 177
    invoke-interface {p1}, Ldagger/android/HasAndroidInjector;->androidInjector()Ldagger/android/AndroidInjector;

    move-result-object v0

    .line 178
    const-string v1, "%s.androidInjector() returned null"

    .line 179
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 178
    invoke-static {v0, v1, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    invoke-interface {v0, p0}, Ldagger/android/AndroidInjector;->inject(Ljava/lang/Object;)V

    return-void
.end method
