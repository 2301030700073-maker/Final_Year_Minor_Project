package org.schabi.newpipe.player;

import android.content.ContextWrapper;
import com.google.android.exoplayer2.util.MimeTypes;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final class AudioServiceLeakFix extends ContextWrapper {
    @Override // android.content.ContextWrapper, android.content.Context
    public final Object getSystemService(String str) {
        return MimeTypes.BASE_TYPE_AUDIO.equals(str) ? getApplicationContext().getSystemService(str) : super.getSystemService(str);
    }
}
