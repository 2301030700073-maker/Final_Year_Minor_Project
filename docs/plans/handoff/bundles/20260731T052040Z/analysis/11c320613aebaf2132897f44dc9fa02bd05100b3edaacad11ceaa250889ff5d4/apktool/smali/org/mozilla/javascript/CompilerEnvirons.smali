.class public Lorg/mozilla/javascript/CompilerEnvirons;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field activationNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private allowMemberExprAsFunctionName:Z

.field private allowSharpComments:Z

.field private allowSuper:Z

.field private errorReporter:Lorg/mozilla/javascript/ErrorReporter;

.field private generateDebugInfo:Z

.field private generateObserverCount:Z

.field private generatingSource:Z

.field private ideMode:Z

.field private interpretedMode:Z

.field private languageVersion:I

.field private recordingComments:Z

.field private recordingLocalJsDocComments:Z

.field private recoverFromErrors:Z

.field private reservedKeywordAsIdentifier:Z

.field private strictMode:Z

.field private warnTrailingComma:Z

.field private warningAsError:Z

.field private xmlAvailable:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lorg/mozilla/javascript/DefaultErrorReporter;->instance:Lorg/mozilla/javascript/DefaultErrorReporter;

    .line 5
    .line 6
    iput-object v0, p0, Lorg/mozilla/javascript/CompilerEnvirons;->errorReporter:Lorg/mozilla/javascript/ErrorReporter;

    .line 7
    .line 8
    const/16 v0, 0xc8

    .line 9
    .line 10
    iput v0, p0, Lorg/mozilla/javascript/CompilerEnvirons;->languageVersion:I

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lorg/mozilla/javascript/CompilerEnvirons;->generateDebugInfo:Z

    .line 14
    .line 15
    iput-boolean v0, p0, Lorg/mozilla/javascript/CompilerEnvirons;->reservedKeywordAsIdentifier:Z

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    iput-boolean v1, p0, Lorg/mozilla/javascript/CompilerEnvirons;->allowMemberExprAsFunctionName:Z

    .line 19
    .line 20
    iput-boolean v0, p0, Lorg/mozilla/javascript/CompilerEnvirons;->xmlAvailable:Z

    .line 21
    .line 22
    iput-boolean v1, p0, Lorg/mozilla/javascript/CompilerEnvirons;->interpretedMode:Z

    .line 23
    .line 24
    iput-boolean v0, p0, Lorg/mozilla/javascript/CompilerEnvirons;->generatingSource:Z

    .line 25
    .line 26
    iput-boolean v1, p0, Lorg/mozilla/javascript/CompilerEnvirons;->strictMode:Z

    .line 27
    .line 28
    iput-boolean v1, p0, Lorg/mozilla/javascript/CompilerEnvirons;->warningAsError:Z

    .line 29
    .line 30
    iput-boolean v1, p0, Lorg/mozilla/javascript/CompilerEnvirons;->generateObserverCount:Z

    .line 31
    .line 32
    iput-boolean v1, p0, Lorg/mozilla/javascript/CompilerEnvirons;->allowSharpComments:Z

    .line 33
    .line 34
    return-void
.end method

.method public static ideEnvirons()Lorg/mozilla/javascript/CompilerEnvirons;
    .locals 3

    .line 1
    new-instance v0, Lorg/mozilla/javascript/CompilerEnvirons;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/mozilla/javascript/CompilerEnvirons;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/CompilerEnvirons;->setRecoverFromErrors(Z)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/CompilerEnvirons;->setRecordingComments(Z)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/CompilerEnvirons;->setStrictMode(Z)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/CompilerEnvirons;->setWarnTrailingComma(Z)V

    .line 17
    .line 18
    .line 19
    const/16 v2, 0xaa

    .line 20
    .line 21
    invoke-virtual {v0, v2}, Lorg/mozilla/javascript/CompilerEnvirons;->setLanguageVersion(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/CompilerEnvirons;->setReservedKeywordAsIdentifier(Z)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/CompilerEnvirons;->setIdeMode(Z)V

    .line 28
    .line 29
    .line 30
    new-instance v1, Lorg/mozilla/javascript/ast/ErrorCollector;

    .line 31
    .line 32
    invoke-direct {v1}, Lorg/mozilla/javascript/ast/ErrorCollector;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/CompilerEnvirons;->setErrorReporter(Lorg/mozilla/javascript/ErrorReporter;)V

    .line 36
    .line 37
    .line 38
    return-object v0
.end method


# virtual methods
.method public getActivationNames()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/mozilla/javascript/CompilerEnvirons;->activationNames:Ljava/util/Set;

    .line 2
    .line 3
    return-object p0
.end method

.method public getAllowSharpComments()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/mozilla/javascript/CompilerEnvirons;->allowSharpComments:Z

    .line 2
    .line 3
    return p0
.end method

.method public final getErrorReporter()Lorg/mozilla/javascript/ErrorReporter;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/mozilla/javascript/CompilerEnvirons;->errorReporter:Lorg/mozilla/javascript/ErrorReporter;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getLanguageVersion()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/mozilla/javascript/CompilerEnvirons;->languageVersion:I

    .line 2
    .line 3
    return p0
.end method

.method public final getOptimizationLevel()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-boolean p0, p0, Lorg/mozilla/javascript/CompilerEnvirons;->interpretedMode:Z

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/4 p0, -0x1

    .line 6
    return p0

    .line 7
    :cond_0
    const/16 p0, 0x9

    .line 8
    .line 9
    return p0
.end method

.method public getWarnTrailingComma()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/mozilla/javascript/CompilerEnvirons;->warnTrailingComma:Z

    .line 2
    .line 3
    return p0
.end method

.method public initFromContext(Lorg/mozilla/javascript/Context;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lorg/mozilla/javascript/Context;->getErrorReporter()Lorg/mozilla/javascript/ErrorReporter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/CompilerEnvirons;->setErrorReporter(Lorg/mozilla/javascript/ErrorReporter;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iput v0, p0, Lorg/mozilla/javascript/CompilerEnvirons;->languageVersion:I

    .line 13
    .line 14
    invoke-virtual {p1}, Lorg/mozilla/javascript/Context;->isGeneratingDebugChanged()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {p1}, Lorg/mozilla/javascript/Context;->isGeneratingDebug()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v0, 0x0

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 30
    :goto_1
    iput-boolean v0, p0, Lorg/mozilla/javascript/CompilerEnvirons;->generateDebugInfo:Z

    .line 31
    .line 32
    const/4 v0, 0x3

    .line 33
    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/Context;->hasFeature(I)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    iput-boolean v0, p0, Lorg/mozilla/javascript/CompilerEnvirons;->reservedKeywordAsIdentifier:Z

    .line 38
    .line 39
    const/4 v0, 0x2

    .line 40
    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/Context;->hasFeature(I)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    iput-boolean v0, p0, Lorg/mozilla/javascript/CompilerEnvirons;->allowMemberExprAsFunctionName:Z

    .line 45
    .line 46
    const/16 v0, 0xb

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/Context;->hasFeature(I)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    iput-boolean v0, p0, Lorg/mozilla/javascript/CompilerEnvirons;->strictMode:Z

    .line 53
    .line 54
    const/16 v0, 0xc

    .line 55
    .line 56
    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/Context;->hasFeature(I)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    iput-boolean v0, p0, Lorg/mozilla/javascript/CompilerEnvirons;->warningAsError:Z

    .line 61
    .line 62
    const/4 v0, 0x6

    .line 63
    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/Context;->hasFeature(I)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    iput-boolean v0, p0, Lorg/mozilla/javascript/CompilerEnvirons;->xmlAvailable:Z

    .line 68
    .line 69
    invoke-virtual {p1}, Lorg/mozilla/javascript/Context;->isInterpretedMode()Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    iput-boolean v0, p0, Lorg/mozilla/javascript/CompilerEnvirons;->interpretedMode:Z

    .line 74
    .line 75
    invoke-virtual {p1}, Lorg/mozilla/javascript/Context;->isGeneratingSource()Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    iput-boolean v0, p0, Lorg/mozilla/javascript/CompilerEnvirons;->generatingSource:Z

    .line 80
    .line 81
    iget-object v0, p1, Lorg/mozilla/javascript/Context;->activationNames:Ljava/util/Set;

    .line 82
    .line 83
    iput-object v0, p0, Lorg/mozilla/javascript/CompilerEnvirons;->activationNames:Ljava/util/Set;

    .line 84
    .line 85
    invoke-virtual {p1}, Lorg/mozilla/javascript/Context;->isGenerateObserverCount()Z

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    iput-boolean p1, p0, Lorg/mozilla/javascript/CompilerEnvirons;->generateObserverCount:Z

    .line 90
    .line 91
    return-void
.end method

.method public final isAllowMemberExprAsFunctionName()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/mozilla/javascript/CompilerEnvirons;->allowMemberExprAsFunctionName:Z

    .line 2
    .line 3
    return p0
.end method

.method public isAllowSuper()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/mozilla/javascript/CompilerEnvirons;->allowSuper:Z

    .line 2
    .line 3
    return p0
.end method

.method public final isGenerateDebugInfo()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/mozilla/javascript/CompilerEnvirons;->generateDebugInfo:Z

    .line 2
    .line 3
    return p0
.end method

.method public isGenerateObserverCount()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/mozilla/javascript/CompilerEnvirons;->generateObserverCount:Z

    .line 2
    .line 3
    return p0
.end method

.method public final isGeneratingSource()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/mozilla/javascript/CompilerEnvirons;->generatingSource:Z

    .line 2
    .line 3
    return p0
.end method

.method public isIdeMode()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/mozilla/javascript/CompilerEnvirons;->ideMode:Z

    .line 2
    .line 3
    return p0
.end method

.method public final isInterpretedMode()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/mozilla/javascript/CompilerEnvirons;->interpretedMode:Z

    .line 2
    .line 3
    return p0
.end method

.method public isRecordingComments()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/mozilla/javascript/CompilerEnvirons;->recordingComments:Z

    .line 2
    .line 3
    return p0
.end method

.method public isRecordingLocalJsDocComments()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/mozilla/javascript/CompilerEnvirons;->recordingLocalJsDocComments:Z

    .line 2
    .line 3
    return p0
.end method

.method public final isReservedKeywordAsIdentifier()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/mozilla/javascript/CompilerEnvirons;->reservedKeywordAsIdentifier:Z

    .line 2
    .line 3
    return p0
.end method

.method public final isStrictMode()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/mozilla/javascript/CompilerEnvirons;->strictMode:Z

    .line 2
    .line 3
    return p0
.end method

.method public final isXmlAvailable()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/mozilla/javascript/CompilerEnvirons;->xmlAvailable:Z

    .line 2
    .line 3
    return p0
.end method

.method public recoverFromErrors()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/mozilla/javascript/CompilerEnvirons;->recoverFromErrors:Z

    .line 2
    .line 3
    return p0
.end method

.method public final reportWarningAsError()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/mozilla/javascript/CompilerEnvirons;->warningAsError:Z

    .line 2
    .line 3
    return p0
.end method

.method public setActivationNames(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/mozilla/javascript/CompilerEnvirons;->activationNames:Ljava/util/Set;

    .line 2
    .line 3
    return-void
.end method

.method public setAllowMemberExprAsFunctionName(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/mozilla/javascript/CompilerEnvirons;->allowMemberExprAsFunctionName:Z

    .line 2
    .line 3
    return-void
.end method

.method public setAllowSharpComments(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/mozilla/javascript/CompilerEnvirons;->allowSharpComments:Z

    .line 2
    .line 3
    return-void
.end method

.method public setAllowSuper(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/mozilla/javascript/CompilerEnvirons;->allowSuper:Z

    .line 2
    .line 3
    return-void
.end method

.method public setErrorReporter(Lorg/mozilla/javascript/ErrorReporter;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lorg/mozilla/javascript/CompilerEnvirons;->errorReporter:Lorg/mozilla/javascript/ErrorReporter;

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setGenerateDebugInfo(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/mozilla/javascript/CompilerEnvirons;->generateDebugInfo:Z

    .line 2
    .line 3
    return-void
.end method

.method public setGenerateObserverCount(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/mozilla/javascript/CompilerEnvirons;->generateObserverCount:Z

    .line 2
    .line 3
    return-void
.end method

.method public setGeneratingSource(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/mozilla/javascript/CompilerEnvirons;->generatingSource:Z

    .line 2
    .line 3
    return-void
.end method

.method public setIdeMode(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/mozilla/javascript/CompilerEnvirons;->ideMode:Z

    .line 2
    .line 3
    return-void
.end method

.method public setInterpretedMode(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/mozilla/javascript/CompilerEnvirons;->interpretedMode:Z

    .line 2
    .line 3
    return-void
.end method

.method public setLanguageVersion(I)V
    .locals 0

    .line 1
    invoke-static {p1}, Lorg/mozilla/javascript/Context;->checkLanguageVersion(I)V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lorg/mozilla/javascript/CompilerEnvirons;->languageVersion:I

    .line 5
    .line 6
    return-void
.end method

.method public setOptimizationLevel(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p1}, Lorg/mozilla/javascript/Context;->checkOptimizationLevel(I)V

    .line 2
    .line 3
    .line 4
    if-gez p1, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    :goto_0
    iput-boolean p1, p0, Lorg/mozilla/javascript/CompilerEnvirons;->interpretedMode:Z

    .line 10
    .line 11
    return-void
.end method

.method public setRecordingComments(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/mozilla/javascript/CompilerEnvirons;->recordingComments:Z

    .line 2
    .line 3
    return-void
.end method

.method public setRecordingLocalJsDocComments(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/mozilla/javascript/CompilerEnvirons;->recordingLocalJsDocComments:Z

    .line 2
    .line 3
    return-void
.end method

.method public setRecoverFromErrors(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/mozilla/javascript/CompilerEnvirons;->recoverFromErrors:Z

    .line 2
    .line 3
    return-void
.end method

.method public setReservedKeywordAsIdentifier(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/mozilla/javascript/CompilerEnvirons;->reservedKeywordAsIdentifier:Z

    .line 2
    .line 3
    return-void
.end method

.method public setStrictMode(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/mozilla/javascript/CompilerEnvirons;->strictMode:Z

    .line 2
    .line 3
    return-void
.end method

.method public setWarnTrailingComma(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/mozilla/javascript/CompilerEnvirons;->warnTrailingComma:Z

    .line 2
    .line 3
    return-void
.end method

.method public setXmlAvailable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/mozilla/javascript/CompilerEnvirons;->xmlAvailable:Z

    .line 2
    .line 3
    return-void
.end method
