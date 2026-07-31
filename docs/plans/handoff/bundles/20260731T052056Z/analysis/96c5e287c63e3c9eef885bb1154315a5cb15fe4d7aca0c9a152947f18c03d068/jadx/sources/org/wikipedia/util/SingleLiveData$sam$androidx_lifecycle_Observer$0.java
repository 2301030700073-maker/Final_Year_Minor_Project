package org.wikipedia.util;

import androidx.lifecycle.Observer;
import kotlin.Function;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionAdapter;
import org.wikipedia.main.MainActivity$$ExternalSyntheticLambda1;
import org.wikipedia.readinglist.recommended.RecommendedReadingListInterestsFragment$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class SingleLiveData$sam$androidx_lifecycle_Observer$0 implements Observer, FunctionAdapter {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Function1 function;

    public /* synthetic */ SingleLiveData$sam$androidx_lifecycle_Observer$0(Function1 function1, int i) {
        this.$r8$classId = i;
        this.function = function1;
    }

    public final boolean equals(Object obj) {
        int i = this.$r8$classId;
        Function1 function1 = this.function;
        switch (i) {
            case 0:
                if (!(obj instanceof Observer) || !(obj instanceof FunctionAdapter) || ((SingleLiveData$$ExternalSyntheticLambda0) function1) != ((FunctionAdapter) obj).getFunctionDelegate()) {
                    break;
                }
                break;
            case 1:
                if (!(obj instanceof Observer) || !(obj instanceof FunctionAdapter) || ((MainActivity$$ExternalSyntheticLambda1) function1) != ((FunctionAdapter) obj).getFunctionDelegate()) {
                    break;
                }
                break;
            case 2:
                if (!(obj instanceof Observer) || !(obj instanceof FunctionAdapter) || ((MainActivity$$ExternalSyntheticLambda1) function1) != ((FunctionAdapter) obj).getFunctionDelegate()) {
                    break;
                }
                break;
            case 3:
                if (!(obj instanceof Observer) || !(obj instanceof FunctionAdapter) || ((MainActivity$$ExternalSyntheticLambda1) function1) != ((FunctionAdapter) obj).getFunctionDelegate()) {
                    break;
                }
                break;
            case 4:
                if (!(obj instanceof Observer) || !(obj instanceof FunctionAdapter) || ((MainActivity$$ExternalSyntheticLambda1) function1) != ((FunctionAdapter) obj).getFunctionDelegate()) {
                    break;
                }
                break;
            case 5:
                if (!(obj instanceof Observer) || !(obj instanceof FunctionAdapter) || ((MainActivity$$ExternalSyntheticLambda1) function1) != ((FunctionAdapter) obj).getFunctionDelegate()) {
                    break;
                }
                break;
            case 6:
                if (!(obj instanceof Observer) || !(obj instanceof FunctionAdapter) || ((MainActivity$$ExternalSyntheticLambda1) function1) != ((FunctionAdapter) obj).getFunctionDelegate()) {
                    break;
                }
                break;
            case 7:
                if (!(obj instanceof Observer) || !(obj instanceof FunctionAdapter) || ((RecommendedReadingListInterestsFragment$$ExternalSyntheticLambda1) function1) != ((FunctionAdapter) obj).getFunctionDelegate()) {
                    break;
                }
                break;
            default:
                if (!(obj instanceof Observer) || !(obj instanceof FunctionAdapter) || ((MainActivity$$ExternalSyntheticLambda1) function1) != ((FunctionAdapter) obj).getFunctionDelegate()) {
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
                return (SingleLiveData$$ExternalSyntheticLambda0) function1;
            case 1:
                return (MainActivity$$ExternalSyntheticLambda1) function1;
            case 2:
                return (MainActivity$$ExternalSyntheticLambda1) function1;
            case 3:
                return (MainActivity$$ExternalSyntheticLambda1) function1;
            case 4:
                return (MainActivity$$ExternalSyntheticLambda1) function1;
            case 5:
                return (MainActivity$$ExternalSyntheticLambda1) function1;
            case 6:
                return (MainActivity$$ExternalSyntheticLambda1) function1;
            case 7:
                return (RecommendedReadingListInterestsFragment$$ExternalSyntheticLambda1) function1;
            default:
                return (MainActivity$$ExternalSyntheticLambda1) function1;
        }
    }

    public final int hashCode() {
        int i = this.$r8$classId;
        Function1 function1 = this.function;
        switch (i) {
            case 0:
                return ((SingleLiveData$$ExternalSyntheticLambda0) function1).hashCode();
            case 1:
                return ((MainActivity$$ExternalSyntheticLambda1) function1).hashCode();
            case 2:
                return ((MainActivity$$ExternalSyntheticLambda1) function1).hashCode();
            case 3:
                return ((MainActivity$$ExternalSyntheticLambda1) function1).hashCode();
            case 4:
                return ((MainActivity$$ExternalSyntheticLambda1) function1).hashCode();
            case 5:
                return ((MainActivity$$ExternalSyntheticLambda1) function1).hashCode();
            case 6:
                return ((MainActivity$$ExternalSyntheticLambda1) function1).hashCode();
            case 7:
                return ((RecommendedReadingListInterestsFragment$$ExternalSyntheticLambda1) function1).hashCode();
            default:
                return ((MainActivity$$ExternalSyntheticLambda1) function1).hashCode();
        }
    }

    @Override // androidx.lifecycle.Observer
    public final /* synthetic */ void onChanged(Object obj) {
        int i = this.$r8$classId;
        Function1 function1 = this.function;
        switch (i) {
            case 0:
                ((SingleLiveData$$ExternalSyntheticLambda0) function1).invoke(obj);
                break;
            case 1:
                ((MainActivity$$ExternalSyntheticLambda1) function1).invoke(obj);
                break;
            case 2:
                ((MainActivity$$ExternalSyntheticLambda1) function1).invoke(obj);
                break;
            case 3:
                ((MainActivity$$ExternalSyntheticLambda1) function1).invoke(obj);
                break;
            case 4:
                ((MainActivity$$ExternalSyntheticLambda1) function1).invoke(obj);
                break;
            case 5:
                ((MainActivity$$ExternalSyntheticLambda1) function1).invoke(obj);
                break;
            case 6:
                ((MainActivity$$ExternalSyntheticLambda1) function1).invoke(obj);
                break;
            case 7:
                ((RecommendedReadingListInterestsFragment$$ExternalSyntheticLambda1) function1).invoke(obj);
                break;
            default:
                ((MainActivity$$ExternalSyntheticLambda1) function1).invoke(obj);
                break;
        }
    }
}
