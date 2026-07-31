package com.fsck.k9.ui.base;

import androidx.datastore.core.SimpleActor$$ExternalSyntheticLambda0;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.lifecycle.Observer;
import com.fsck.k9.ui.choosefolder.ChooseFolderActivity$$ExternalSyntheticLambda1;
import com.fsck.k9.ui.messagelist.LegacyMessageListFragment$$ExternalSyntheticLambda1;
import com.fsck.k9.ui.settings.account.AccountSettingsActivity$$ExternalSyntheticLambda0;
import kotlin.Function;
import kotlin.collections.AbstractMap$$ExternalSyntheticLambda0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.sequences.SequencesKt___SequencesKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class BaseActivity$sam$androidx_lifecycle_Observer$0 implements Observer, FunctionAdapter {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Function1 function;

    public /* synthetic */ BaseActivity$sam$androidx_lifecycle_Observer$0(int i, Function1 function1) {
        this.$r8$classId = i;
        this.function = function1;
    }

    public final boolean equals(Object obj) {
        int i = this.$r8$classId;
        Function1 function1 = this.function;
        switch (i) {
            case 0:
                if (!(obj instanceof Observer) || !(obj instanceof FunctionAdapter) || ((AbstractMap$$ExternalSyntheticLambda0) function1) != ((FunctionAdapter) obj).getFunctionDelegate()) {
                    break;
                }
                break;
            case 1:
                if (!(obj instanceof Observer) || !(obj instanceof FunctionAdapter) || ((SimpleActor$$ExternalSyntheticLambda0) function1) != ((FunctionAdapter) obj).getFunctionDelegate()) {
                    break;
                }
                break;
            case 2:
                if (!(obj instanceof Observer) || !(obj instanceof FunctionAdapter) || ((SequencesKt___SequencesKt$$ExternalSyntheticLambda0) function1) != ((FunctionAdapter) obj).getFunctionDelegate()) {
                    break;
                }
                break;
            case 3:
                if (!(obj instanceof Observer) || !(obj instanceof FunctionAdapter) || ((ChooseFolderActivity$$ExternalSyntheticLambda1) function1) != ((FunctionAdapter) obj).getFunctionDelegate()) {
                    break;
                }
                break;
            case 4:
                if ((obj instanceof Observer) && (obj instanceof FunctionAdapter)) {
                    break;
                }
                break;
            case 5:
                if (!(obj instanceof Observer) || !(obj instanceof FunctionAdapter) || ((LegacyMessageListFragment$$ExternalSyntheticLambda1) function1) != ((FunctionAdapter) obj).getFunctionDelegate()) {
                    break;
                }
                break;
            case 6:
                if (!(obj instanceof Observer) || !(obj instanceof FunctionAdapter) || ((AbstractMap$$ExternalSyntheticLambda0) function1) != ((FunctionAdapter) obj).getFunctionDelegate()) {
                    break;
                }
                break;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                if (!(obj instanceof Observer) || !(obj instanceof FunctionAdapter) || ((AbstractMap$$ExternalSyntheticLambda0) function1) != ((FunctionAdapter) obj).getFunctionDelegate()) {
                    break;
                }
                break;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                if (!(obj instanceof Observer) || !(obj instanceof FunctionAdapter) || ((AbstractMap$$ExternalSyntheticLambda0) function1) != ((FunctionAdapter) obj).getFunctionDelegate()) {
                    break;
                }
                break;
            case 9:
                if (!(obj instanceof Observer) || !(obj instanceof FunctionAdapter) || ((AccountSettingsActivity$$ExternalSyntheticLambda0) function1) != ((FunctionAdapter) obj).getFunctionDelegate()) {
                    break;
                }
                break;
            default:
                if (!(obj instanceof Observer) || !(obj instanceof FunctionAdapter) || ((AbstractMap$$ExternalSyntheticLambda0) function1) != ((FunctionAdapter) obj).getFunctionDelegate()) {
                    break;
                }
                break;
        }
        return false;
    }

    @Override // kotlin.jvm.internal.FunctionAdapter
    public final Function getFunctionDelegate() {
        int i = this.$r8$classId;
        Function1 function1 = this.function;
        switch (i) {
            case 0:
                return (AbstractMap$$ExternalSyntheticLambda0) function1;
            case 1:
                return (SimpleActor$$ExternalSyntheticLambda0) function1;
            case 2:
                return (SequencesKt___SequencesKt$$ExternalSyntheticLambda0) function1;
            case 3:
                return (ChooseFolderActivity$$ExternalSyntheticLambda1) function1;
            case 4:
                return function1;
            case 5:
                return (LegacyMessageListFragment$$ExternalSyntheticLambda1) function1;
            case 6:
                return (AbstractMap$$ExternalSyntheticLambda0) function1;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                return (AbstractMap$$ExternalSyntheticLambda0) function1;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                return (AbstractMap$$ExternalSyntheticLambda0) function1;
            case 9:
                return (AccountSettingsActivity$$ExternalSyntheticLambda0) function1;
            default:
                return (AbstractMap$$ExternalSyntheticLambda0) function1;
        }
    }

    public final int hashCode() {
        int i = this.$r8$classId;
        Function1 function1 = this.function;
        switch (i) {
            case 0:
                return ((AbstractMap$$ExternalSyntheticLambda0) function1).hashCode();
            case 1:
                return ((SimpleActor$$ExternalSyntheticLambda0) function1).hashCode();
            case 2:
                return ((SequencesKt___SequencesKt$$ExternalSyntheticLambda0) function1).hashCode();
            case 3:
                return ((ChooseFolderActivity$$ExternalSyntheticLambda1) function1).hashCode();
            case 4:
                return function1.hashCode();
            case 5:
                return ((LegacyMessageListFragment$$ExternalSyntheticLambda1) function1).hashCode();
            case 6:
                return ((AbstractMap$$ExternalSyntheticLambda0) function1).hashCode();
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                return ((AbstractMap$$ExternalSyntheticLambda0) function1).hashCode();
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                return ((AbstractMap$$ExternalSyntheticLambda0) function1).hashCode();
            case 9:
                return ((AccountSettingsActivity$$ExternalSyntheticLambda0) function1).hashCode();
            default:
                return ((AbstractMap$$ExternalSyntheticLambda0) function1).hashCode();
        }
    }

    @Override // androidx.lifecycle.Observer
    public final /* synthetic */ void onChanged(Object obj) {
        int i = this.$r8$classId;
        Function1 function1 = this.function;
        switch (i) {
            case 0:
                ((AbstractMap$$ExternalSyntheticLambda0) function1).invoke(obj);
                break;
            case 1:
                ((SimpleActor$$ExternalSyntheticLambda0) function1).invoke(obj);
                break;
            case 2:
                ((SequencesKt___SequencesKt$$ExternalSyntheticLambda0) function1).invoke(obj);
                break;
            case 3:
                ((ChooseFolderActivity$$ExternalSyntheticLambda1) function1).invoke(obj);
                break;
            case 4:
                function1.invoke(obj);
                break;
            case 5:
                ((LegacyMessageListFragment$$ExternalSyntheticLambda1) function1).invoke(obj);
                break;
            case 6:
                ((AbstractMap$$ExternalSyntheticLambda0) function1).invoke(obj);
                break;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                ((AbstractMap$$ExternalSyntheticLambda0) function1).invoke(obj);
                break;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                ((AbstractMap$$ExternalSyntheticLambda0) function1).invoke(obj);
                break;
            case 9:
                ((AccountSettingsActivity$$ExternalSyntheticLambda0) function1).invoke(obj);
                break;
            default:
                ((AbstractMap$$ExternalSyntheticLambda0) function1).invoke(obj);
                break;
        }
    }
}
