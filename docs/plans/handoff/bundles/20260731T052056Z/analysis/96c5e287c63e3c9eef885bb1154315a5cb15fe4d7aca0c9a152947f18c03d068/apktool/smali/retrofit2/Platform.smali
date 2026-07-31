.class public abstract Lretrofit2/Platform;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final builtInFactories:Lretrofit2/Reflection;

.field public static final callbackExecutor:Lretrofit2/AndroidMainExecutor;

.field public static final reflection:Lretrofit2/Reflection;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const-string v0, "java.vm.name"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const-string v1, "RoboVM"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x6

    .line 17
    const/4 v3, 0x0

    .line 18
    const/4 v4, 0x0

    .line 19
    if-nez v1, :cond_2

    .line 20
    .line 21
    const-string v1, "Dalvik"

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    sput-object v4, Lretrofit2/Platform;->callbackExecutor:Lretrofit2/AndroidMainExecutor;

    .line 30
    .line 31
    new-instance v0, Lretrofit2/Reflection$Java8;

    .line 32
    .line 33
    invoke-direct {v0, v3}, Lretrofit2/Reflection;-><init>(I)V

    .line 34
    .line 35
    .line 36
    sput-object v0, Lretrofit2/Platform;->reflection:Lretrofit2/Reflection;

    .line 37
    .line 38
    new-instance v0, Lretrofit2/BuiltInFactories$Java8;

    .line 39
    .line 40
    invoke-direct {v0, v2}, Lretrofit2/Reflection;-><init>(I)V

    .line 41
    .line 42
    .line 43
    sput-object v0, Lretrofit2/Platform;->builtInFactories:Lretrofit2/Reflection;

    .line 44
    .line 45
    return-void

    .line 46
    :cond_0
    new-instance v0, Lretrofit2/AndroidMainExecutor;

    .line 47
    .line 48
    invoke-direct {v0}, Lretrofit2/AndroidMainExecutor;-><init>()V

    .line 49
    .line 50
    .line 51
    sput-object v0, Lretrofit2/Platform;->callbackExecutor:Lretrofit2/AndroidMainExecutor;

    .line 52
    .line 53
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 54
    .line 55
    const/16 v1, 0x18

    .line 56
    .line 57
    if-lt v0, v1, :cond_1

    .line 58
    .line 59
    new-instance v0, Lretrofit2/Reflection$Android24;

    .line 60
    .line 61
    invoke-direct {v0, v3}, Lretrofit2/Reflection;-><init>(I)V

    .line 62
    .line 63
    .line 64
    sput-object v0, Lretrofit2/Platform;->reflection:Lretrofit2/Reflection;

    .line 65
    .line 66
    new-instance v0, Lretrofit2/BuiltInFactories$Java8;

    .line 67
    .line 68
    invoke-direct {v0, v2}, Lretrofit2/Reflection;-><init>(I)V

    .line 69
    .line 70
    .line 71
    sput-object v0, Lretrofit2/Platform;->builtInFactories:Lretrofit2/Reflection;

    .line 72
    .line 73
    return-void

    .line 74
    :cond_1
    new-instance v0, Lretrofit2/Reflection;

    .line 75
    .line 76
    invoke-direct {v0, v3}, Lretrofit2/Reflection;-><init>(I)V

    .line 77
    .line 78
    .line 79
    sput-object v0, Lretrofit2/Platform;->reflection:Lretrofit2/Reflection;

    .line 80
    .line 81
    new-instance v0, Lretrofit2/Reflection;

    .line 82
    .line 83
    invoke-direct {v0, v2}, Lretrofit2/Reflection;-><init>(I)V

    .line 84
    .line 85
    .line 86
    sput-object v0, Lretrofit2/Platform;->builtInFactories:Lretrofit2/Reflection;

    .line 87
    .line 88
    return-void

    .line 89
    :cond_2
    sput-object v4, Lretrofit2/Platform;->callbackExecutor:Lretrofit2/AndroidMainExecutor;

    .line 90
    .line 91
    new-instance v0, Lretrofit2/Reflection;

    .line 92
    .line 93
    invoke-direct {v0, v3}, Lretrofit2/Reflection;-><init>(I)V

    .line 94
    .line 95
    .line 96
    sput-object v0, Lretrofit2/Platform;->reflection:Lretrofit2/Reflection;

    .line 97
    .line 98
    new-instance v0, Lretrofit2/Reflection;

    .line 99
    .line 100
    invoke-direct {v0, v2}, Lretrofit2/Reflection;-><init>(I)V

    .line 101
    .line 102
    .line 103
    sput-object v0, Lretrofit2/Platform;->builtInFactories:Lretrofit2/Reflection;

    .line 104
    .line 105
    return-void
.end method
