.class public final Lio/sentry/instrumentation/file/SentryFileOutputStream$Factory;
.super Ljava/lang/Object;
.source "SentryFileOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/instrumentation/file/SentryFileOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/io/FileOutputStream;Ljava/io/File;)Ljava/io/FileOutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 155
    invoke-static {}, Lio/sentry/HubAdapter;->getInstance()Lio/sentry/HubAdapter;

    move-result-object v0

    .line 156
    invoke-static {v0}, Lio/sentry/instrumentation/file/SentryFileOutputStream$Factory;->isTracingEnabled(Lio/sentry/IHub;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    new-instance v1, Lio/sentry/instrumentation/file/SentryFileOutputStream;

    const/4 v2, 0x0

    invoke-static {p1, v2, p0, v0}, Lio/sentry/instrumentation/file/SentryFileOutputStream;->access$000(Ljava/io/File;ZLjava/io/FileOutputStream;Lio/sentry/IHub;)Lio/sentry/instrumentation/file/FileOutputStreamInitData;

    move-result-object p0

    const/4 p1, 0x0

    invoke-direct {v1, p0, p1}, Lio/sentry/instrumentation/file/SentryFileOutputStream;-><init>(Lio/sentry/instrumentation/file/FileOutputStreamInitData;Lio/sentry/instrumentation/file/SentryFileOutputStream$1;)V

    move-object p0, v1

    :cond_0
    return-object p0
.end method

.method public static create(Ljava/io/FileOutputStream;Ljava/io/File;Lio/sentry/IHub;)Ljava/io/FileOutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 183
    invoke-static {p2}, Lio/sentry/instrumentation/file/SentryFileOutputStream$Factory;->isTracingEnabled(Lio/sentry/IHub;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    new-instance v0, Lio/sentry/instrumentation/file/SentryFileOutputStream;

    const/4 v1, 0x0

    invoke-static {p1, v1, p0, p2}, Lio/sentry/instrumentation/file/SentryFileOutputStream;->access$000(Ljava/io/File;ZLjava/io/FileOutputStream;Lio/sentry/IHub;)Lio/sentry/instrumentation/file/FileOutputStreamInitData;

    move-result-object p0

    const/4 p1, 0x0

    invoke-direct {v0, p0, p1}, Lio/sentry/instrumentation/file/SentryFileOutputStream;-><init>(Lio/sentry/instrumentation/file/FileOutputStreamInitData;Lio/sentry/instrumentation/file/SentryFileOutputStream$1;)V

    move-object p0, v0

    :cond_0
    return-object p0
.end method

.method public static create(Ljava/io/FileOutputStream;Ljava/io/File;Z)Ljava/io/FileOutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 164
    invoke-static {}, Lio/sentry/HubAdapter;->getInstance()Lio/sentry/HubAdapter;

    move-result-object v0

    .line 165
    invoke-static {v0}, Lio/sentry/instrumentation/file/SentryFileOutputStream$Factory;->isTracingEnabled(Lio/sentry/IHub;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    new-instance v1, Lio/sentry/instrumentation/file/SentryFileOutputStream;

    invoke-static {p1, p2, p0, v0}, Lio/sentry/instrumentation/file/SentryFileOutputStream;->access$000(Ljava/io/File;ZLjava/io/FileOutputStream;Lio/sentry/IHub;)Lio/sentry/instrumentation/file/FileOutputStreamInitData;

    move-result-object p0

    const/4 p1, 0x0

    invoke-direct {v1, p0, p1}, Lio/sentry/instrumentation/file/SentryFileOutputStream;-><init>(Lio/sentry/instrumentation/file/FileOutputStreamInitData;Lio/sentry/instrumentation/file/SentryFileOutputStream$1;)V

    move-object p0, v1

    :cond_0
    return-object p0
.end method

.method public static create(Ljava/io/FileOutputStream;Ljava/io/FileDescriptor;)Ljava/io/FileOutputStream;
    .locals 2

    .line 172
    invoke-static {}, Lio/sentry/HubAdapter;->getInstance()Lio/sentry/HubAdapter;

    move-result-object v0

    .line 173
    invoke-static {v0}, Lio/sentry/instrumentation/file/SentryFileOutputStream$Factory;->isTracingEnabled(Lio/sentry/IHub;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    new-instance v1, Lio/sentry/instrumentation/file/SentryFileOutputStream;

    invoke-static {p1, p0, v0}, Lio/sentry/instrumentation/file/SentryFileOutputStream;->access$200(Ljava/io/FileDescriptor;Ljava/io/FileOutputStream;Lio/sentry/IHub;)Lio/sentry/instrumentation/file/FileOutputStreamInitData;

    move-result-object p0

    const/4 v0, 0x0

    invoke-direct {v1, p0, p1, v0}, Lio/sentry/instrumentation/file/SentryFileOutputStream;-><init>(Lio/sentry/instrumentation/file/FileOutputStreamInitData;Ljava/io/FileDescriptor;Lio/sentry/instrumentation/file/SentryFileOutputStream$1;)V

    move-object p0, v1

    :cond_0
    return-object p0
.end method

.method public static create(Ljava/io/FileOutputStream;Ljava/lang/String;)Ljava/io/FileOutputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 135
    invoke-static {}, Lio/sentry/HubAdapter;->getInstance()Lio/sentry/HubAdapter;

    move-result-object v0

    .line 136
    invoke-static {v0}, Lio/sentry/instrumentation/file/SentryFileOutputStream$Factory;->isTracingEnabled(Lio/sentry/IHub;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 137
    new-instance v1, Lio/sentry/instrumentation/file/SentryFileOutputStream;

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 138
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    const/4 p1, 0x0

    invoke-static {v3, p1, p0, v0}, Lio/sentry/instrumentation/file/SentryFileOutputStream;->access$000(Ljava/io/File;ZLjava/io/FileOutputStream;Lio/sentry/IHub;)Lio/sentry/instrumentation/file/FileOutputStreamInitData;

    move-result-object p0

    invoke-direct {v1, p0, v2}, Lio/sentry/instrumentation/file/SentryFileOutputStream;-><init>(Lio/sentry/instrumentation/file/FileOutputStreamInitData;Lio/sentry/instrumentation/file/SentryFileOutputStream$1;)V

    move-object p0, v1

    :cond_1
    return-object p0
.end method

.method public static create(Ljava/io/FileOutputStream;Ljava/lang/String;Z)Ljava/io/FileOutputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 145
    invoke-static {}, Lio/sentry/HubAdapter;->getInstance()Lio/sentry/HubAdapter;

    move-result-object v0

    .line 146
    invoke-static {v0}, Lio/sentry/instrumentation/file/SentryFileOutputStream$Factory;->isTracingEnabled(Lio/sentry/IHub;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 147
    new-instance v1, Lio/sentry/instrumentation/file/SentryFileOutputStream;

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 148
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    invoke-static {v3, p2, p0, v0}, Lio/sentry/instrumentation/file/SentryFileOutputStream;->access$000(Ljava/io/File;ZLjava/io/FileOutputStream;Lio/sentry/IHub;)Lio/sentry/instrumentation/file/FileOutputStreamInitData;

    move-result-object p0

    invoke-direct {v1, p0, v2}, Lio/sentry/instrumentation/file/SentryFileOutputStream;-><init>(Lio/sentry/instrumentation/file/FileOutputStreamInitData;Lio/sentry/instrumentation/file/SentryFileOutputStream$1;)V

    move-object p0, v1

    :cond_1
    return-object p0
.end method

.method private static isTracingEnabled(Lio/sentry/IHub;)Z
    .locals 0

    .line 189
    invoke-interface {p0}, Lio/sentry/IHub;->getOptions()Lio/sentry/SentryOptions;

    move-result-object p0

    .line 190
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->isTracingEnabled()Z

    move-result p0

    return p0
.end method
