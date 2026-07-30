package androidx.compose.foundation.text.input.internal;

import android.view.KeyEvent;
import java.util.List;

/* compiled from: InputEventCallback2.android.kt */
/* loaded from: classes.dex */
public interface InputEventCallback2 {
    void onConnectionClosed(RecordingInputConnection recordingInputConnection);

    void onEditCommands(List list);

    /* renamed from: onImeAction-KlQnJC8, reason: not valid java name */
    void mo511onImeActionKlQnJC8(int i);

    void onKeyEvent(KeyEvent keyEvent);

    void onRequestCursorAnchorInfo(boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6);
}
