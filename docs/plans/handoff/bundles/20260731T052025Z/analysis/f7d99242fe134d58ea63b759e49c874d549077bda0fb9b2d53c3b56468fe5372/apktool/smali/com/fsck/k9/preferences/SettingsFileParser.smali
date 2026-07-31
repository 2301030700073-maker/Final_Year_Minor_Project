.class public final Lcom/fsck/k9/preferences/SettingsFileParser;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# direct methods
.method public static parseSettings(Ljava/io/InputStream;)Lcom/fsck/k9/preferences/SettingsFile$Contents;
    .locals 2

    .line 1
    const-string v0, "Error parsing settings XML"

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    :try_start_0
    new-instance v1, Lokhttp3/ConnectionPool;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Lokhttp3/ConnectionPool;-><init>(Ljava/io/InputStream;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Lokhttp3/ConnectionPool;->parse()Lcom/fsck/k9/preferences/SettingsFile$Contents;

    .line 12
    .line 13
    .line 14
    move-result-object p0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/fsck/k9/preferences/SettingsParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return-object p0

    .line 16
    :catch_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :catch_1
    move-exception p0

    .line 19
    goto :goto_1

    .line 20
    :goto_0
    new-instance v1, Lcom/fsck/k9/preferences/SettingsImportExportException;

    .line 21
    .line 22
    invoke-direct {v1, v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    .line 24
    .line 25
    throw v1

    .line 26
    :goto_1
    new-instance v1, Lcom/fsck/k9/preferences/SettingsImportExportException;

    .line 27
    .line 28
    invoke-direct {v1, v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 29
    .line 30
    .line 31
    throw v1
.end method
