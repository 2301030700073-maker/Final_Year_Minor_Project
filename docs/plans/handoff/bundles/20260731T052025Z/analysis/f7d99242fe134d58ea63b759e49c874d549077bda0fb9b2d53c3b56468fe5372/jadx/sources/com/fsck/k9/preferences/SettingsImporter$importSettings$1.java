package com.fsck.k9.preferences;

import java.util.Iterator;
import java.util.List;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SettingsImporter$importSettings$1 extends ContinuationImpl {
    public int I$0;
    public List L$2;
    public List L$3;
    public SettingsFile$Contents L$5;
    public Iterator L$6;
    public SettingsFile$Account L$7;
    public boolean Z$0;
    public int label;
    public /* synthetic */ Object result;
    public final /* synthetic */ SettingsImporter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SettingsImporter$importSettings$1(SettingsImporter settingsImporter, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.this$0 = settingsImporter;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.importSettings(null, false, null, this);
    }
}
