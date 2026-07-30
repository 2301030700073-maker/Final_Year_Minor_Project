package kotlinx.serialization.json.internal;

import kotlin.DeepRecursiveScope;
import kotlin.KotlinNothingValueException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function3;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonPrimitive;

/* compiled from: JsonTreeReader.kt */
/* loaded from: classes2.dex */
final class JsonTreeReader$readDeepRecursive$1 extends RestrictedSuspendLambda implements Function3 {
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ JsonTreeReader this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    JsonTreeReader$readDeepRecursive$1(JsonTreeReader jsonTreeReader, Continuation continuation) {
        super(3, continuation);
        this.this$0 = jsonTreeReader;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(DeepRecursiveScope deepRecursiveScope, Unit unit, Continuation continuation) {
        JsonTreeReader$readDeepRecursive$1 jsonTreeReader$readDeepRecursive$1 = new JsonTreeReader$readDeepRecursive$1(this.this$0, continuation);
        jsonTreeReader$readDeepRecursive$1.L$0 = deepRecursiveScope;
        return jsonTreeReader$readDeepRecursive$1.invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        AbstractJsonLexer abstractJsonLexer;
        AbstractJsonLexer abstractJsonLexer2;
        JsonElement readArray;
        JsonPrimitive readValue;
        JsonPrimitive readValue2;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            DeepRecursiveScope deepRecursiveScope = (DeepRecursiveScope) this.L$0;
            abstractJsonLexer = this.this$0.lexer;
            byte peekNextToken = abstractJsonLexer.peekNextToken();
            if (peekNextToken == 1) {
                readValue2 = this.this$0.readValue(true);
                return readValue2;
            }
            if (peekNextToken == 0) {
                readValue = this.this$0.readValue(false);
                return readValue;
            }
            if (peekNextToken != 6) {
                if (peekNextToken == 8) {
                    readArray = this.this$0.readArray();
                    return readArray;
                }
                abstractJsonLexer2 = this.this$0.lexer;
                AbstractJsonLexer.fail$default(abstractJsonLexer2, "Can't begin reading element, unexpected token", 0, null, 6, null);
                throw new KotlinNothingValueException();
            }
            JsonTreeReader jsonTreeReader = this.this$0;
            this.label = 1;
            obj = jsonTreeReader.readObject(deepRecursiveScope, this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        return (JsonElement) obj;
    }
}
