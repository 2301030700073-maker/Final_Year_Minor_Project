.class public final Lio/sentry/instrumentation/file/SentryFileInputStream$Factory;
.super Ljava/lang/Object;
.source "SentryFileInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/instrumentation/file/SentryFileInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/io/FileInputStream;Ljava/io/File;)Ljava/io/FileInputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 140
    invoke-static {}, Lio/sentry/HubAdapter;->getInstance()Lio/sentry/HubAdapter;

    move-result-object v0

    .line 141
    invoke-static {v0}, Lio/sentry/instrumentation/file/SentryFileInputStream$Factory;->isTracingEnabled(Lio/sentry/IHub;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    new-instance v1, Lio/sentry/instrumentation/file/SentryFileInputStream;

    invoke-static {p1, p0, v0}, Lio/sentry/instrumentation/file/SentryFileInputStream;->access$000(Ljava/io/File;Ljava/io/FileInputStream;Lio/sentry/IHub;)Lio/sentry/instrumentation/file/FileInputStreamInitData;

    move-result-object p0

    const/4 p1, 0x0

    invoke-direct {v1, p0, p1}, Lio/sentry/instrumentation/file/SentryFileInputStream;-><init>(Lio/sentry/instrumentation/file/FileInputStreamInitData;Lio/sentry/instrumentation/file/SentryFileInputStream$1;)V

    move-object p0, v1

    :cond_0
    return-object p0
.end method

.method static create(Ljava/io/FileInputStream;Ljava/io/File;Lio/sentry/IHub;)Ljava/io/FileInputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 157
    invoke-static {p2}, Lio/sentry/instrumentation/file/SentryFileInputStream$Factory;->isTracingEnabled(Lio/sentry/IHub;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    new-instance v0, Lio/sentry/instrumentation/file/SentryFileInputStream;

    invoke-static {p1, p0, p2}, Lio/sentry/instrumentation/file/SentryFileInputStream;->access$000(Ljava/io/File;Ljava/io/FileInputStream;Lio/sentry/IHub;)Lio/sentry/instrumentation/file/FileInputStreamInitData;

    move-result-object p0

    const/4 p1, 0x0

    invoke-direct {v0, p0, p1}, Lio/sentry/instrumentation/file/SentryFileInputStream;-><init>(Lio/sentry/instrumentation/file/FileInputStreamInitData;Lio/sentry/instrumentation/file/SentryFileInputStream$1;)V

    move-object p0, v0

    :cond_0
    return-object p0
.end method

.method public static create(Ljava/io/FileInputStream;Ljava/io/FileDescriptor;)Ljava/io/FileInputStream;
    .locals 2

    .line 148
    invoke-static {}, Lio/sentry/HubAdapter;->getInstance()Lio/sentry/HubAdapter;

    move-result-object v0

    .line 149
    invoke-static {v0}, Lio/sentry/instrumentation/file/SentryFileInputStream$Factory;->isTracingEnabled(Lio/sentry/IHub;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 150
    new-instance v1, Lio/sentry/instrumentation/file/SentryFileInputStream;

    invoke-static {p1, p0, v0}, Lio/sentry/instrumentation/file/SentryFileInputStream;->access$200(Ljava/io/FileDescriptor;Ljava/io/FileInputStream;Lio/sentry/IHub;)Lio/sentry/instrumentation/file/FileInputStreamInitData;

    move-result-object p0

    const/4 v0, 0x0

    invoke-direct {v1, p0, p1, v0}, Lio/sentry/instrumentation/file/SentryFileInputStream;-><init>(Lio/sentry/instrumentation/file/FileInputStreamInitData;Ljava/io/FileDescriptor;Lio/sentry/instrumentation/file/SentryFileInputStream$1;)V

    move-object p0, v1

    :cond_0
    return-object p0
.end method

.method public static create(Ljava/io/FileInputStream;Ljava/lang/String;)Ljava/io/FileInputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 131
    invoke-static {}, Lio/sentry/HubAdapter;->getInstance()Lio/sentry/HubAdapter;

    move-result-object v0

    .line 132
    invoke-static {v0}, Lio/sentry/instrumentation/file/SentryFileInputStream$Factory;->isTracingEnabled(Lio/sentry/IHub;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 133
    new-instance v1, Lio/sentry/instrumentation/file/SentryFileInputStream;

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    invoke-static {v3, p0, v0}, Lio/sentry/instrumentation/file/SentryFileInputStream;->access$000(Ljava/io/File;Ljava/io/FileInputStream;Lio/sentry/IHub;)Lio/sentry/instrumentation/file/FileInputStreamInitData;

    move-result-object p0

    invoke-direct {v1, p0, v2}, Lio/sentry/instrumentation/file/SentryFileInputStream;-><init>(Lio/sentry/instrumentation/file/FileInputStreamInitData;Lio/sentry/instrumentation/file/SentryFileInputStream$1;)V

    move-object p0, v1

    :cond_1
    return-object p0
.end method

.method private static isTracingEnabled(Lio/sentry/IHub;)Z
    .locals 0

    .line 163
    invoke-interface {p0}, Lio/sentry/IHub;->getOptions()Lio/sentry/SentryOptions;

    move-result-object p0

    .line 164
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->isTracingEnabled()Z

    move-result p0

    return p0
.end method
