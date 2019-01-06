#!/bin/bash
#
# Copyright (C) 2017 - 2019, Stephan Mueller <smueller@chronox.de>
#
# License: see LICENSE file in root directory
#
# THIS SOFTWARE IS PROVIDED ``AS IS'' AND ANY EXPRESS OR IMPLIED
# WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES
# OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE, ALL OF
# WHICH ARE HEREBY DISCLAIMED.  IN NO EVENT SHALL THE AUTHOR BE
# LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
# CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT
# OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR
# BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
# LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
# (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE
# USE OF THIS SOFTWARE, EVEN IF NOT ADVISED OF THE POSSIBILITY OF SUCH
# DAMAGE.
#

DIRNAME="$(dirname "$0")"
. "$DIRNAME/libtest.sh"

find_platform "$KCAPI_TEST_BIN_DIR/kcapi-convenience"

"$KCAPI_TEST_BIN_DIR/kcapi-convenience"
if [ $? -eq 0 ]
then
	echo_pass "Convenience message digest operation"
else
	echo_fail "Convenience message digest operation"
fi

echo "==================================================================="
echo "Number of failures: $failures"

exit $failures
