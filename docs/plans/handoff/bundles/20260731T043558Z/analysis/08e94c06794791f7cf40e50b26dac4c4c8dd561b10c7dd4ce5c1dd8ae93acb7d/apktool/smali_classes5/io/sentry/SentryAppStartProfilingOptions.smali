.class public final Lio/sentry/SentryAppStartProfilingOptions;
.super Ljava/lang/Object;
.source "SentryAppStartProfilingOptions.java"

# interfaces
.implements Lio/sentry/JsonUnknown;
.implements Lio/sentry/JsonSerializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/SentryAppStartProfilingOptions$JsonKeys;,
        Lio/sentry/SentryAppStartProfilingOptions$Deserializer;
    }
.end annotation


# instance fields
.field isProfilingEnabled:Z

.field profileSampleRate:Ljava/lang/Double;

.field profileSampled:Z

.field profilingTracesDirPath:Ljava/lang/String;

.field profilingTracesHz:I

.field traceSampleRate:Ljava/lang/Double;

.field traceSampled:Z

.field private unknown:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lio/sentry/SentryAppStartProfilingOptions;->traceSampled:Z

    const/4 v1, 0x0

    .line 28
    iput-object v1, p0, Lio/sentry/SentryAppStartProfilingOptions;->traceSampleRate:Ljava/lang/Double;

    .line 29
    iput-boolean v0, p0, Lio/sentry/SentryAppStartProfilingOptions;->profileSampled:Z

    .line 30
    iput-object v1, p0, Lio/sentry/SentryAppStartProfilingOptions;->profileSampleRate:Ljava/lang/Double;

    .line 31
    iput-object v1, p0, Lio/sentry/SentryAppStartProfilingOptions;->profilingTracesDirPath:Ljava/lang/String;

    .line 32
    iput-boolean v0, p0, Lio/sentry/SentryAppStartProfilingOptions;->isProfilingEnabled:Z

    .line 33
    iput v0, p0, Lio/sentry/SentryAppStartProfilingOptions;->profilingTracesHz:I

    return-void
.end method

.method constructor <init>(Lio/sentry/SentryOptions;Lio/sentry/TracesSamplingDecision;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-virtual {p2}, Lio/sentry/TracesSamplingDecision;->getSampled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lio/sentry/SentryAppStartProfilingOptions;->traceSampled:Z

    .line 40
    invoke-virtual {p2}, Lio/sentry/TracesSamplingDecision;->getSampleRate()Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/SentryAppStartProfilingOptions;->traceSampleRate:Ljava/lang/Double;

    .line 41
    invoke-virtual {p2}, Lio/sentry/TracesSamplingDecision;->getProfileSampled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lio/sentry/SentryAppStartProfilingOptions;->profileSampled:Z

    .line 42
    invoke-virtual {p2}, Lio/sentry/TracesSamplingDecision;->getProfileSampleRate()Ljava/lang/Double;

    move-result-object p2

    iput-object p2, p0, Lio/sentry/SentryAppStartProfilingOptions;->profileSampleRate:Ljava/lang/Double;

    .line 43
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getProfilingTracesDirPath()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lio/sentry/SentryAppStartProfilingOptions;->profilingTracesDirPath:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->isProfilingEnabled()Z

    move-result p2

    iput-boolean p2, p0, Lio/sentry/SentryAppStartProfilingOptions;->isProfilingEnabled:Z

    .line 45
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getProfilingTracesHz()I

    move-result p1

    iput p1, p0, Lio/sentry/SentryAppStartProfilingOptions;->profilingTracesHz:I

    return-void
.end method


# virtual methods
.method public getProfileSampleRate()Ljava/lang/Double;
    .locals 1

    .line 61
    iget-object v0, p0, Lio/sentry/SentryAppStartProfilingOptions;->profileSampleRate:Ljava/lang/Double;

    return-object v0
.end method

.method public getProfilingTracesDirPath()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lio/sentry/SentryAppStartProfilingOptions;->profilingTracesDirPath:Ljava/lang/String;

    return-object v0
.end method

.method public getProfilingTracesHz()I
    .locals 1

    .line 101
    iget v0, p0, Lio/sentry/SentryAppStartProfilingOptions;->profilingTracesHz:I

    return v0
.end method

.method public getTraceSampleRate()Ljava/lang/Double;
    .locals 1

    .line 77
    iget-object v0, p0, Lio/sentry/SentryAppStartProfilingOptions;->traceSampleRate:Ljava/lang/Double;

    return-object v0
.end method

.method public getUnknown()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lio/sentry/SentryAppStartProfilingOptions;->unknown:Ljava/util/Map;

    return-object v0
.end method

.method public isProfileSampled()Z
    .locals 1

    .line 53
    iget-boolean v0, p0, Lio/sentry/SentryAppStartProfilingOptions;->profileSampled:Z

    return v0
.end method

.method public isProfilingEnabled()Z
    .locals 1

    .line 93
    iget-boolean v0, p0, Lio/sentry/SentryAppStartProfilingOptions;->isProfilingEnabled:Z

    return v0
.end method

.method public isTraceSampled()Z
    .locals 1

    .line 69
    iget-boolean v0, p0, Lio/sentry/SentryAppStartProfilingOptions;->traceSampled:Z

    return v0
.end method

.method public serialize(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->beginObject()Lio/sentry/ObjectWriter;

    .line 120
    const-string v0, "profile_sampled"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-boolean v1, p0, Lio/sentry/SentryAppStartProfilingOptions;->profileSampled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 121
    const-string v0, "profile_sample_rate"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/SentryAppStartProfilingOptions;->profileSampleRate:Ljava/lang/Double;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 122
    const-string v0, "trace_sampled"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-boolean v1, p0, Lio/sentry/SentryAppStartProfilingOptions;->traceSampled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 123
    const-string v0, "trace_sample_rate"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/SentryAppStartProfilingOptions;->traceSampleRate:Ljava/lang/Double;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 124
    const-string v0, "profiling_traces_dir_path"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/SentryAppStartProfilingOptions;->profilingTracesDirPath:Ljava/lang/String;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 125
    const-string v0, "is_profiling_enabled"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-boolean v1, p0, Lio/sentry/SentryAppStartProfilingOptions;->isProfilingEnabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 126
    const-string v0, "profiling_traces_hz"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget v1, p0, Lio/sentry/SentryAppStartProfilingOptions;->profilingTracesHz:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 128
    iget-object v0, p0, Lio/sentry/SentryAppStartProfilingOptions;->unknown:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 129
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 130
    iget-object v2, p0, Lio/sentry/SentryAppStartProfilingOptions;->unknown:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 131
    invoke-interface {p1, v1}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 132
    invoke-interface {p1, p2, v2}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    goto :goto_0

    .line 135
    :cond_0
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->endObject()Lio/sentry/ObjectWriter;

    return-void
.end method

.method public setProfileSampleRate(Ljava/lang/Double;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lio/sentry/SentryAppStartProfilingOptions;->profileSampleRate:Ljava/lang/Double;

    return-void
.end method

.method public setProfileSampled(Z)V
    .locals 0

    .line 49
    iput-boolean p1, p0, Lio/sentry/SentryAppStartProfilingOptions;->profileSampled:Z

    return-void
.end method

.method public setProfilingEnabled(Z)V
    .locals 0

    .line 89
    iput-boolean p1, p0, Lio/sentry/SentryAppStartProfilingOptions;->isProfilingEnabled:Z

    return-void
.end method

.method public setProfilingTracesDirPath(Ljava/lang/String;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lio/sentry/SentryAppStartProfilingOptions;->profilingTracesDirPath:Ljava/lang/String;

    return-void
.end method

.method public setProfilingTracesHz(I)V
    .locals 0

    .line 97
    iput p1, p0, Lio/sentry/SentryAppStartProfilingOptions;->profilingTracesHz:I

    return-void
.end method

.method public setTraceSampleRate(Ljava/lang/Double;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lio/sentry/SentryAppStartProfilingOptions;->traceSampleRate:Ljava/lang/Double;

    return-void
.end method

.method public setTraceSampled(Z)V
    .locals 0

    .line 65
    iput-boolean p1, p0, Lio/sentry/SentryAppStartProfilingOptions;->traceSampled:Z

    return-void
.end method

.method public setUnknown(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 146
    iput-object p1, p0, Lio/sentry/SentryAppStartProfilingOptions;->unknown:Ljava/util/Map;

    return-void
.end method
