.class public final Lnet/thunderbird/core/file/DefaultFileManager;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final fileSystem:Lnet/thunderbird/core/file/AndroidFileSystemManager;


# direct methods
.method public constructor <init>(Lnet/thunderbird/core/file/AndroidFileSystemManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/thunderbird/core/file/DefaultFileManager;->fileSystem:Lnet/thunderbird/core/file/AndroidFileSystemManager;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final copy(Lcom/eygraber/uri/Uri;Lcom/eygraber/uri/Uri;)Lnet/thunderbird/core/outcome/Outcome;
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lnet/thunderbird/core/file/DefaultFileManager;->fileSystem:Lnet/thunderbird/core/file/AndroidFileSystemManager;

    .line 8
    .line 9
    iget-object p0, p0, Lnet/thunderbird/core/file/AndroidFileSystemManager;->contentResolver:Landroid/content/ContentResolver;

    .line 10
    .line 11
    invoke-static {p1}, Lorg/slf4j/helpers/Util;->toAndroidUri(Lcom/eygraber/uri/Uri;)Landroid/net/Uri;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p0, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 v1, 0x0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    sget v2, Lkotlinx/io/JvmCoreKt;->$r8$clinit:I

    .line 23
    .line 24
    new-instance v2, Lkotlinx/io/InputStreamSource;

    .line 25
    .line 26
    invoke-direct {v2, v0}, Lkotlinx/io/InputStreamSource;-><init>(Ljava/io/InputStream;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move-object v2, v1

    .line 31
    :goto_0
    const-string/jumbo v0, "wt"

    .line 32
    .line 33
    .line 34
    invoke-static {p2}, Lorg/slf4j/helpers/Util;->toAndroidUri(Lcom/eygraber/uri/Uri;)Landroid/net/Uri;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {p0, v3, v0}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;Ljava/lang/String;)Ljava/io/OutputStream;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    if-eqz p0, :cond_1

    .line 43
    .line 44
    sget v0, Lkotlinx/io/JvmCoreKt;->$r8$clinit:I

    .line 45
    .line 46
    new-instance v0, Lkotlinx/io/OutputStreamSink;

    .line 47
    .line 48
    invoke-direct {v0, p0}, Lkotlinx/io/OutputStreamSink;-><init>(Ljava/io/OutputStream;)V

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    move-object v0, v1

    .line 53
    :goto_1
    if-nez v2, :cond_2

    .line 54
    .line 55
    new-instance p0, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 56
    .line 57
    new-instance p2, Lnet/thunderbird/core/file/FileOperationError$Unavailable;

    .line 58
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    const-string v2, "Unable to open source: "

    .line 62
    .line 63
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-direct {p2, p1, v0}, Lnet/thunderbird/core/file/FileOperationError$Unavailable;-><init>(Lcom/eygraber/uri/Uri;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-direct {p0, p2, v1}, Lnet/thunderbird/core/outcome/Outcome$Failure;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    return-object p0

    .line 80
    :cond_2
    if-nez v0, :cond_3

    .line 81
    .line 82
    new-instance p0, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 83
    .line 84
    new-instance p1, Lnet/thunderbird/core/file/FileOperationError$Unavailable;

    .line 85
    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    const-string v2, "Unable to open destination: "

    .line 89
    .line 90
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-direct {p1, p2, v0}, Lnet/thunderbird/core/file/FileOperationError$Unavailable;-><init>(Lcom/eygraber/uri/Uri;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-direct {p0, p1, v1}, Lnet/thunderbird/core/outcome/Outcome$Failure;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    return-object p0

    .line 107
    :cond_3
    new-instance p0, Lkotlinx/io/Buffer;

    .line 108
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    .line 111
    .line 112
    :goto_2
    :try_start_0
    invoke-virtual {v2, p0}, Lkotlinx/io/InputStreamSource;->readAtMostTo(Lkotlinx/io/Buffer;)J

    .line 113
    .line 114
    .line 115
    move-result-wide v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lnet/thunderbird/core/file/command/CopyCommand$FileOperationException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    const-wide/16 v5, 0x0

    .line 117
    .line 118
    cmp-long v1, v3, v5

    .line 119
    .line 120
    if-lez v1, :cond_4

    .line 121
    .line 122
    :try_start_1
    invoke-virtual {v0, p0, v3, v4}, Lkotlinx/io/OutputStreamSink;->write(Lkotlinx/io/Buffer;J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lnet/thunderbird/core/file/command/CopyCommand$FileOperationException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    .line 124
    .line 125
    goto :goto_2

    .line 126
    :catch_0
    move-exception p0

    .line 127
    :try_start_2
    new-instance p1, Lnet/thunderbird/core/file/command/CopyCommand$FileOperationException;

    .line 128
    .line 129
    new-instance v1, Lnet/thunderbird/core/file/FileOperationError$WriteFailed;

    .line 130
    .line 131
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    invoke-direct {v1, p2, v3}, Lnet/thunderbird/core/file/FileOperationError$WriteFailed;-><init>(Lcom/eygraber/uri/Uri;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-direct {p1, v1, p0}, Lnet/thunderbird/core/file/command/CopyCommand$FileOperationException;-><init>(Lnet/thunderbird/core/file/FileOperationError;Ljava/io/IOException;)V

    .line 139
    .line 140
    .line 141
    throw p1
    :try_end_2
    .catch Lnet/thunderbird/core/file/command/CopyCommand$FileOperationException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 142
    :cond_4
    :try_start_3
    invoke-virtual {v0}, Lkotlinx/io/OutputStreamSink;->flush()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lnet/thunderbird/core/file/command/CopyCommand$FileOperationException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 143
    .line 144
    .line 145
    :try_start_4
    new-instance p0, Lnet/thunderbird/core/outcome/Outcome$Success;

    .line 146
    .line 147
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 148
    .line 149
    invoke-direct {p0, p1}, Lnet/thunderbird/core/outcome/Outcome$Success;-><init>(Ljava/lang/Object;)V
    :try_end_4
    .catch Lnet/thunderbird/core/file/command/CopyCommand$FileOperationException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 150
    .line 151
    .line 152
    invoke-static {v2, v0}, Lorg/minidns/util/Base64;->closeQuietly(Lkotlinx/io/InputStreamSource;Lkotlinx/io/OutputStreamSink;)V

    .line 153
    .line 154
    .line 155
    return-object p0

    .line 156
    :catchall_0
    move-exception p0

    .line 157
    goto :goto_7

    .line 158
    :catch_1
    move-exception p0

    .line 159
    goto :goto_3

    .line 160
    :catch_2
    move-exception p0

    .line 161
    goto :goto_5

    .line 162
    :catch_3
    move-exception p0

    .line 163
    :try_start_5
    new-instance p1, Lnet/thunderbird/core/file/command/CopyCommand$FileOperationException;

    .line 164
    .line 165
    new-instance v1, Lnet/thunderbird/core/file/FileOperationError$WriteFailed;

    .line 166
    .line 167
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v3

    .line 171
    invoke-direct {v1, p2, v3}, Lnet/thunderbird/core/file/FileOperationError$WriteFailed;-><init>(Lcom/eygraber/uri/Uri;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    invoke-direct {p1, v1, p0}, Lnet/thunderbird/core/file/command/CopyCommand$FileOperationException;-><init>(Lnet/thunderbird/core/file/FileOperationError;Ljava/io/IOException;)V

    .line 175
    .line 176
    .line 177
    throw p1

    .line 178
    :catch_4
    move-exception p0

    .line 179
    new-instance p2, Lnet/thunderbird/core/file/command/CopyCommand$FileOperationException;

    .line 180
    .line 181
    new-instance v1, Lnet/thunderbird/core/file/FileOperationError$ReadFailed;

    .line 182
    .line 183
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v3

    .line 187
    invoke-direct {v1, p1, v3}, Lnet/thunderbird/core/file/FileOperationError$ReadFailed;-><init>(Lcom/eygraber/uri/Uri;Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    invoke-direct {p2, v1, p0}, Lnet/thunderbird/core/file/command/CopyCommand$FileOperationException;-><init>(Lnet/thunderbird/core/file/FileOperationError;Ljava/io/IOException;)V

    .line 191
    .line 192
    .line 193
    throw p2
    :try_end_5
    .catch Lnet/thunderbird/core/file/command/CopyCommand$FileOperationException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 194
    :goto_3
    :try_start_6
    new-instance p1, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 195
    .line 196
    new-instance p2, Lnet/thunderbird/core/file/FileOperationError$Unknown;

    .line 197
    .line 198
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    invoke-direct {p2, v1}, Lnet/thunderbird/core/file/FileOperationError$Unknown;-><init>(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    invoke-direct {p1, p2, p0}, Lnet/thunderbird/core/outcome/Outcome$Failure;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 206
    .line 207
    .line 208
    :goto_4
    invoke-static {v2, v0}, Lorg/minidns/util/Base64;->closeQuietly(Lkotlinx/io/InputStreamSource;Lkotlinx/io/OutputStreamSink;)V

    .line 209
    .line 210
    .line 211
    goto :goto_6

    .line 212
    :goto_5
    :try_start_7
    new-instance p1, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 213
    .line 214
    iget-object p2, p0, Lnet/thunderbird/core/file/command/CopyCommand$FileOperationException;->error:Lnet/thunderbird/core/file/FileOperationError;

    .line 215
    .line 216
    iget-object p0, p0, Lnet/thunderbird/core/file/command/CopyCommand$FileOperationException;->cause:Ljava/io/IOException;

    .line 217
    .line 218
    invoke-direct {p1, p2, p0}, Lnet/thunderbird/core/outcome/Outcome$Failure;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 219
    .line 220
    .line 221
    goto :goto_4

    .line 222
    :goto_6
    return-object p1

    .line 223
    :goto_7
    invoke-static {v2, v0}, Lorg/minidns/util/Base64;->closeQuietly(Lkotlinx/io/InputStreamSource;Lkotlinx/io/OutputStreamSink;)V

    .line 224
    .line 225
    .line 226
    throw p0
.end method

.method public final delete(Lcom/eygraber/uri/Uri;)Lnet/thunderbird/core/outcome/Outcome;
    .locals 4

    .line 1
    iget-object p0, p0, Lnet/thunderbird/core/file/DefaultFileManager;->fileSystem:Lnet/thunderbird/core/file/AndroidFileSystemManager;

    .line 2
    .line 3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {p0, p1}, Lnet/thunderbird/core/file/AndroidFileSystemManager;->delete(Lcom/eygraber/uri/Uri;)V

    .line 6
    .line 7
    .line 8
    new-instance p0, Lnet/thunderbird/core/outcome/Outcome$Success;

    .line 9
    .line 10
    invoke-direct {p0, v0}, Lnet/thunderbird/core/outcome/Outcome$Success;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    return-object p0

    .line 14
    :catch_0
    move-exception p0

    .line 15
    new-instance v0, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 16
    .line 17
    new-instance v1, Lnet/thunderbird/core/file/FileOperationError$Unavailable;

    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    if-nez v2, :cond_0

    .line 24
    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v3, "Unable to delete file at: "

    .line 28
    .line 29
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    :cond_0
    invoke-direct {v1, p1, v2}, Lnet/thunderbird/core/file/FileOperationError$Unavailable;-><init>(Lcom/eygraber/uri/Uri;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-direct {v0, v1, p0}, Lnet/thunderbird/core/outcome/Outcome$Failure;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catch_1
    new-instance p0, Lnet/thunderbird/core/outcome/Outcome$Success;

    .line 47
    .line 48
    invoke-direct {p0, v0}, Lnet/thunderbird/core/outcome/Outcome$Success;-><init>(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    move-object v0, p0

    .line 52
    :goto_0
    return-object v0
.end method
