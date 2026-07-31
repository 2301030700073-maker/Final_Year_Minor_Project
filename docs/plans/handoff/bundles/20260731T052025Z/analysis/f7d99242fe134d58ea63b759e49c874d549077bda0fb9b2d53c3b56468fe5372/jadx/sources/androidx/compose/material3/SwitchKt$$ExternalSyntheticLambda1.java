package androidx.compose.material3;

import androidx.compose.foundation.interaction.MutableInteractionSourceImpl;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.vector.ImageVector;
import com.fsck.k9.mailstore.AttachmentViewInfo;
import com.fsck.k9.ui.helper.SizeFormatter;
import com.fsck.k9.ui.messagelist.MessageListLoaderKt;
import com.skydoves.landscapist.crossfade.CrossfadeWithEffectKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.thunderbird.feature.mail.message.list.domain.model.SortType;
import okhttp3.Cookie;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class SwitchKt$$ExternalSyntheticLambda1 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ boolean f$1;
    public final /* synthetic */ Object f$3;
    public final /* synthetic */ Object f$5;
    public final /* synthetic */ Object f$6;
    public final /* synthetic */ int f$7;

    public /* synthetic */ SwitchKt$$ExternalSyntheticLambda1(Object obj, Modifier modifier, int i, boolean z, Function1 function1, ComposableLambdaImpl composableLambdaImpl, int i2) {
        this.$r8$classId = 3;
        this.f$3 = obj;
        this.f$0 = modifier;
        this.f$7 = i;
        this.f$1 = z;
        this.f$5 = function1;
        this.f$6 = composableLambdaImpl;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        int i2 = this.f$7;
        Object obj3 = this.f$3;
        Unit unit = Unit.INSTANCE;
        Object obj4 = this.f$0;
        Object obj5 = this.f$6;
        Object obj6 = this.f$5;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                int updateChangedFlags = Updater.updateChangedFlags(i2 | 1);
                SwitchKt.SwitchImpl((Modifier) obj4, this.f$1, (SwitchColors) obj3, (MutableInteractionSourceImpl) obj6, (Shape) obj5, (Composer) obj, updateChangedFlags);
                break;
            case 1:
                ((Integer) obj2).getClass();
                int updateChangedFlags2 = Updater.updateChangedFlags(1);
                MessageListLoaderKt.SortTypeMenuItem((SortType) obj3, this.f$1, (Function0) obj6, (Modifier) obj4, (PaddingValues) obj5, (Composer) obj, updateChangedFlags2, this.f$7);
                break;
            case 2:
                ((Integer) obj2).getClass();
                int updateChangedFlags3 = Updater.updateChangedFlags(i2 | 1);
                Util.AttachmentListItem((AttachmentViewInfo) obj4, this.f$1, (SizeFormatter) obj3, (Function0) obj6, (Function0) obj5, (Composer) obj, updateChangedFlags3);
                break;
            case 3:
                ((Integer) obj2).getClass();
                int updateChangedFlags4 = Updater.updateChangedFlags(196609);
                CrossfadeWithEffectKt.CrossfadeWithEffect(this.f$3, (Modifier) obj4, this.f$7, this.f$1, (Function1) obj6, (ComposableLambdaImpl) obj5, (Composer) obj, updateChangedFlags4);
                break;
            default:
                ((Integer) obj2).getClass();
                int updateChangedFlags5 = Updater.updateChangedFlags(1);
                Cookie.Companion.SettingListItem((String) obj3, (Function0) obj6, (ImageVector) obj5, (Modifier) obj4, this.f$1, (Composer) obj, updateChangedFlags5, this.f$7);
                break;
        }
        return unit;
    }

    public /* synthetic */ SwitchKt$$ExternalSyntheticLambda1(Object obj, boolean z, Object obj2, Object obj3, Object obj4, int i, int i2) {
        this.$r8$classId = i2;
        this.f$0 = obj;
        this.f$1 = z;
        this.f$3 = obj2;
        this.f$5 = obj3;
        this.f$6 = obj4;
        this.f$7 = i;
    }

    public /* synthetic */ SwitchKt$$ExternalSyntheticLambda1(String str, Function0 function0, ImageVector imageVector, Modifier modifier, boolean z, int i, int i2) {
        this.$r8$classId = 4;
        this.f$3 = str;
        this.f$5 = function0;
        this.f$6 = imageVector;
        this.f$0 = modifier;
        this.f$1 = z;
        this.f$7 = i2;
    }

    public /* synthetic */ SwitchKt$$ExternalSyntheticLambda1(SortType sortType, boolean z, Function0 function0, Modifier modifier, PaddingValues paddingValues, int i, int i2) {
        this.$r8$classId = 1;
        this.f$3 = sortType;
        this.f$1 = z;
        this.f$5 = function0;
        this.f$0 = modifier;
        this.f$6 = paddingValues;
        this.f$7 = i2;
    }
}
