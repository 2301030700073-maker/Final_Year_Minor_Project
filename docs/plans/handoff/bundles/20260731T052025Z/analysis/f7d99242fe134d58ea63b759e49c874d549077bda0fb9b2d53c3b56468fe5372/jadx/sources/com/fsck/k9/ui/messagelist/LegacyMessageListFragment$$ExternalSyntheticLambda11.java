package com.fsck.k9.ui.messagelist;

import android.os.Bundle;
import com.fsck.k9.ui.messagelist.LegacyMessageListFragment;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.text.Regex$$ExternalSyntheticLambda1;
import kotlinx.io.Sink$CC;
import net.thunderbird.core.logging.Logger;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class LegacyMessageListFragment$$ExternalSyntheticLambda11 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ LegacyMessageListFragment f$0;

    public /* synthetic */ LegacyMessageListFragment$$ExternalSyntheticLambda11(LegacyMessageListFragment legacyMessageListFragment, int i) {
        this.$r8$classId = i;
        this.f$0 = legacyMessageListFragment;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        LegacyMessageListFragment legacyMessageListFragment = this.f$0;
        switch (i) {
            case 0:
                String str = (String) obj;
                Bundle bundle = (Bundle) obj2;
                str.getClass();
                bundle.getClass();
                Sink$CC.debug$default((Logger) legacyMessageListFragment.logger$delegate.getValue(), legacyMessageListFragment.logTag, null, new Regex$$ExternalSyntheticLambda1(25, str, bundle), 2);
                legacyMessageListFragment.loadMessageList(true);
                break;
            case 1:
                long longValue = ((Long) obj).longValue();
                List list = (List) obj2;
                list.getClass();
                legacyMessageListFragment.copyOrMove(list, longValue, LegacyMessageListFragment.FolderOperation.COPY);
                break;
            default:
                long longValue2 = ((Long) obj).longValue();
                List list2 = (List) obj2;
                list2.getClass();
                legacyMessageListFragment.copyOrMove(list2, longValue2, LegacyMessageListFragment.FolderOperation.MOVE);
                break;
        }
        return unit;
    }
}
